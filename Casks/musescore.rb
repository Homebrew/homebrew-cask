cask "musescore" do
  version "4.0.0"
  sha256 "f5649524565d0392051f6291dc925c4dfb08200fda1a71d73cb46fe203328e1c"

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
    "~/Library/Application Support/MuseScore",
    "~/Library/Caches/MuseScore",
    "~/Library/Caches/org.musescore.MuseScore",
    "~/Library/Preferences/org.musescore.MuseScore*.plist",
    "~/Library/Saved Application State/org.musescore.MuseScore.savedState",
  ]
end
