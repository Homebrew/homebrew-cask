cask "inkscape" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.3"
  sha256 arm:   "f4aa9c9b2e06db432c6f81a494ad9aa59b87cb7d9539cd7e6f6000002cb9edff",
         intel: "c4e7056dee4faaa623730e93a94ad1bfa017643eb85a58f9d25419397ccc5073"

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version.csv.second || version.csv.first}_#{arch}.dmg"
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  # Inkscape releases use a version format like 1.4, 1.4.1, etc. but the file
  # name version can sometimes use a longer number (e.g. 1.4.230579 for 1.4.2,
  # 1.3.0 for 1.3, etc.).
  livecheck do
    url "https://inkscape.org/release/all/mac-os-x/"
    regex(%r{/inkscape[._-]v?(\d+(?:\.\d+)+)/?["' >].*?Inkscape[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}im)
    strategy :page_match do |page, regex|
      # Match within individual row elements to ensure the regex doesn't capture
      # a release version and file name version from separate releases
      page.scan(%r{<tr[^>]*?>(.*?)</tr>}im).filter_map do |row|
        match = row[0].match(regex)
        next unless match

        (match[1] == match[2]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Inkscape.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/inkscape.wrapper.sh"
  binary shimscript, target: "inkscape"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/Inkscape.app/Contents/MacOS/inkscape' "$@"
    EOS
  end

  zap trash: [
    "~/.config/inkscape",
    "~/Library/Application Support/Inkscape",
    "~/Library/Application Support/org.inkscape.Inkscape",
    "~/Library/Caches/org.inkscape.Inkscape*",
    "~/Library/Preferences/org.inkscape.Inkscape.plist",
    "~/Library/Saved Application State/org.inkscape.Inkscape.savedState",
  ]
end
