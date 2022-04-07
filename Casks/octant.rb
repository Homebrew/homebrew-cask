cask "octant" do
  version "0.25.1"
  sha256 "c7ee66b02241abc9f924114006b8dbe6a981331f282f8b99fb8ef9b22477c3e0"

  url "https://github.com/vmware-tanzu/octant/releases/download/v#{version}/Octant-#{version}.dmg",
      verified: "github.com/vmware-tanzu/octant/"
  name "Octant Desktop"
  desc "Developer-centric web interface for Kubernetes"
  homepage "https://octant.dev/"

  auto_updates true
  conflicts_with formula: %w[
    octant
  ]

  app "Octant.app"

  uninstall quit: "com.vmware.tanzu.octant"

  zap trash: [
    "~/Library/Application Support/octant",
    "~/Library/Preferences/com.vmware.tanzu.octant.plist",
    "~/Library/Saved Application State/com.vmware.tanzu.octant.savedState",
  ]
end
