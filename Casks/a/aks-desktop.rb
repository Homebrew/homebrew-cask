cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "c8282d17404a5ac6fe4fa552d3deb3a7ee65a9107fd07436d306abf173094911",
         intel: "cfe0431c943565e2b840d25d442575364e0336ea40ddf0349414c513806ba0d8"

  url "https://github.com/Azure/aks-desktop/releases/download/v#{version}/aks-desktop-#{version}-mac-#{arch}.dmg"
  name "AKS desktop"
  desc "Azure Kubernetes Service desktop application"
  homepage "https://github.com/Azure/aks-desktop"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AKS desktop.app"

  uninstall quit: "com.microsoft.aks-desktop"

  zap trash: [
    "~/Library/Application Support/AKS desktop",
    "~/Library/Logs/AKS desktop",
    "~/Library/Preferences/com.microsoft.aks-desktop.plist",
  ]
end
