cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "7.3.1.6378"
  sha256 arm:   "747c226e996d22850f587f181a46b7d4e3fe8ce8d7e03ce23c959ef771a30021",
         intel: "a842f88ef8fe14690d2563285a65bf612ff4e18c3977c6fcc402cf048abc2552"

  url "https://github.com/CrealityOfficial/CrealityPrint/releases/download/v#{version.csv.second || version.major_minor_patch}/CrealityPrint-#{version.csv.first}-macx-#{arch}-Release.dmg"
  name "Creality Print"
  desc "Slicer and cloud services for some Creality FDM 3D printers"
  homepage "https://www.creality.com/pages/download-software"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Creality[._-]?Print[._-]v?(\d+(?:\.\d+)+)[._-]macx[._-]#{arch}[._-]Release\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next unless match

        if Version.new(match[2]).major_minor_patch.to_s == match[1]
          match[2]
        else
          "#{match[2]},#{match[1]}"
        end
      end
    end
  end

  depends_on :macos

  app "Creality Print.app"

  uninstall launchctl: "application.com.creality.crealityprint.*"

  zap trash: [
    "~/Library/Application Support/Creality",
    "~/Library/Caches/com.creality.crealityprint",
    "~/Library/Caches/Creality",
    "~/Library/Preferences/com.creality.crealityprint.plist",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
    "~/Library/WebKit/com.creality.crealityprint",
  ]
end
