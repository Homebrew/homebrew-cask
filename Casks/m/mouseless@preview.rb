cask "mouseless@preview" do
  version "1.0.0-preview.5"
  sha256 "92d8ab3ccee5566b3694dc1ee950a35b64311bfbdcb2a52ff16a800608a702ad"

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
  depends_on macos: :monterey

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
