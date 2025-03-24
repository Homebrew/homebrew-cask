cask "mouseless@preview" do
  version "0.4.0-preview.1"
  sha256 "47a0b63afdcf0c78cfc0ac1ea144a2a272a986bed7f938d7d3c005694b829ab7"

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
