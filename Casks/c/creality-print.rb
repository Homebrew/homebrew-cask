cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "7.2.2.5483,7.2.1"
  sha256 arm:   "86c611740afc797a3f55d1c7f3f1e34ce0c3bf55cf5bcc6b93febe32d5b7df63",
         intel: "3ca5e7d52da7dedd3c20af83adffa074ff4b01971701085ae64f91209d7932c9"

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
    "~/Library/Caches/Creality",
    "~/Library/Saved Application State/com.creality.crealityprint.savedState",
  ]
end
