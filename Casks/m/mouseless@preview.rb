cask "mouseless@preview" do
  version "0.4.2"
  sha256 "5e98fb5ff4e138104605ab4ce23884c1175f5db8f1733b5efeab2551b0f69681"

  url "https://github.com/croian/mouseless/releases/download/v#{version}/mouseless-installer_v#{version}.dmg",
      verified: "github.com/croian/mouseless/"
  name "Mouseless preview channel"
  desc "Mouse control with the keyboard"
  homepage "https://mouseless.click/"

  livecheck do
    url "https://api.sonuscape.net/mouseless/latest-version"
    strategy :json do |json|
      json["latest_preview_version"]
    end
  end

  conflicts_with cask: "mouseless"
  depends_on macos: ">= :monterey"

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
