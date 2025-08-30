cask "mouseless@preview" do
  version "0.4.0-preview.7"
  sha256 "d504c8812fb3bd28bbc63393b78d133d032b9e3c8f12d1c4709623906090b644"

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
