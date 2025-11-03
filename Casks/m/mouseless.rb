cask "mouseless" do
  version "0.4.3"
  sha256 "732aaff73f167971678f5fc7a752c7e7ae8ac1b45012a5dec0932af84ce5c149"

  url "https://github.com/croian/mouseless/releases/download/v#{version}/mouseless-installer_v#{version}.dmg",
      verified: "github.com/croian/mouseless/"
  name "Mouseless"
  desc "Mouse control with the keyboard"
  homepage "https://mouseless.click/"

  livecheck do
    url "https://api.sonuscape.net/mouseless/latest-version"
    strategy :json do |json|
      json["latest_version"]
    end
  end

  conflicts_with cask: "mouseless@preview"
  depends_on macos: ">= :monterey"

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
