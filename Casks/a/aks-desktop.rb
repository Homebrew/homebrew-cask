cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0-alpha"
  sha256 arm:   "52036ea4eee782b9f55313a59cae50744feb211bd2913e5b13ae48aec6f21f04",
         intel: "0bd98cb146d09e4c7208ec320416374efe33ccb8901578b92ba43194b035b81e"

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
