cask "mouseless@preview" do
  version "0.4.0-preview.2"
  sha256 "5a2f1c27ca5b2e53e408ea675b16e6f24cb84664d40e570e7bd837f1c0347872"

  url "https://mouseless.click/mouseless-installer_v#{version}.dmg"
  name "mouseless preview channel"
  desc "Mouse control with the keyboard"
  homepage "https://mouseless.click/"

  livecheck do
    url "https://api.sonuscape.net/mouseless/latest-version"
    strategy :json do |json|
      json["latest_preview_version"]
    end
  end

  conflicts_with cask: "mouseless"
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
