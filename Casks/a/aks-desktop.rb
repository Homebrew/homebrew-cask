cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "10b99dcfa30febe6f944eda9e24a5289f11fec80b3373c735c3d6f1e0d3779e8",
         intel: "317b6f6f1dfb752a986c9e1d4fac5e3ece8414bc36954d02c06268594d09e1a9"

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
