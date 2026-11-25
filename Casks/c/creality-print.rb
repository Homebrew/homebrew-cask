cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "7.3.2.6412"
  sha256 arm:   "f83d64021e2c001a6c513d418a5401951eba7e58cf2443637e3829c46900606f",
         intel: "0f37686e7787e5b4d9d33d492dbd12c0cc69ff8ccd883d8743410abfddb403e1"

  release_tag = version.csv.second || version.major_minor_patch
  url "https://github.com/CrealityOfficial/CrealityPrint/releases/download/v#{release_tag}/CrealityPrint-#{version.csv.first}-macx-#{arch}-Release.dmg"
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
