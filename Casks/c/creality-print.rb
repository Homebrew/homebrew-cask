cask "creality-print" do
  arch arm: "arm64", intel: "x86_64"

  version "7.3.0.6157"
  sha256 arm:   "db54dd6d48940e569e66905a4ae4ecd5738e600e000077a30f19195b9ce217b7",
         intel: "c9144a29b7d85b46d2ef95bf6e189d6cb6945d473223a8351d7c93e6ca8e25e5"

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
