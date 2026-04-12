cask "mouseless@preview" do
  version "1.0.0-preview.1"
  sha256 "d090193035b573b736272a29bdff30afb351bf110d612ace299e3840d9a63e4a"

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
