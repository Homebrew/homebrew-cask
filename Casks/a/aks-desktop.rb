cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "c19727456131c246f875eb711a6dc69cbc6984bc399cb0942f1af62d76aefbbc",
         intel: "4412610eef10c94838eade9ef18af3ff3c367467c1e9b3e5d80a74ba3fc6f019"

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
