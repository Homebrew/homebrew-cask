cask "musescore" do
  version "3.6.2.548020600"
  sha256 "9477247e14d3ac3cda1b095b9d9e70d0ed6030f6d19ab9a0013206318e75ee5d"

  url "https://github.com/musescore/MuseScore/releases/download/v#{version.major_minor_patch.chomp(".0")}/MuseScore-#{version}.dmg",
      verified: "github.com/musescore/MuseScore/"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  livecheck do
    url "https://github.com/musescore/MuseScore/releases/latest"
    regex(%r{href=.*?/MuseScore[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  depends_on macos: ">= :mojave"

  app "MuseScore #{version.major}.app"
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mscore.wrapper.sh"
  binary shimscript, target: "mscore"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore' "$@"
    EOS
  end

  zap trash: [
    "~/Documents/MuseScore3",
    "~/Library/Application Support/MuseScore",
    "~/Library/Caches/MuseScore",
    "~/Library/Caches/org.musescore.MuseScore",
    "~/Library/Preferences/org.musescore.MuseScore.plist",
    "~/Library/Preferences/org.musescore.MuseScore3.plist",
    "~/Library/Saved Application State/org.musescore.MuseScore.savedState",
  ]
end
