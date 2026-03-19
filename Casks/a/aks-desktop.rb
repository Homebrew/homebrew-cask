cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0-beta"
  sha256 arm:   "aaaa7ece148cfd0d59a82226bcf9cc748205544ffe1a2abc0731a515ed7147c2",
         intel: "5c95f3523c0e626336297c497654a75a6ea251418d551e2bdb82fc6fdfe6f424"

  url "https://github.com/Azure/aks-desktop/releases/download/v#{version}/aks-desktop-#{version}-mac-#{arch}.dmg"
  name "AKS desktop"
  desc "Azure Kubernetes Service desktop application"
  homepage "https://github.com/Azure/aks-desktop"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-alpha|-beta)?)/i)
  end

  app "AKS desktop.app"

  uninstall quit: "com.microsoft.aks-desktop"

  zap trash: [
    "~/Library/Application Support/AKS desktop",
    "~/Library/Logs/AKS desktop",
    "~/Library/Preferences/com.microsoft.aks-desktop.plist",
  ]
end
