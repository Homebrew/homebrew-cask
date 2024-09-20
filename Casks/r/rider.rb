cask "rider" do
  arch arm: "-aarch64"

  version "2024.2.5,242.22855.90"
  sha256 arm:   "bd89a85ccfbb019916fb4536d84a61b8013fcf67e12e13fd2855e27165a3b1d8",
         intel: "0161a1eb2d1e99ed88bebf26e7d1646434924a0878ab4c8e5ec1fc34b0998a5e"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.csv.first}#{arch}.dmg"
  name "JetBrains Rider"
  desc ".NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :json do |json|
      json["RD"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Rider.app"
  binary "#{appdir}/Rider.app/Contents/MacOS/rider"

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
