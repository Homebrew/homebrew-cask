cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "cff96d1c409221a6dd53b0b9eeffe9bcecf80346fca3abfb0ab07d758819c498",
         intel: "36163c04ca6648ba084e165a1462898fc8cd5fe0f421e5b3335ceda37ffc35da"

  url "https://github.com/Azure/aks-desktop/releases/download/v#{version}/aks-desktop-#{version}-mac-#{arch}.dmg"
  name "AKS desktop"
  desc "Azure Kubernetes Service desktop application"
  homepage "https://github.com/Azure/aks-desktop"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-alpha|-beta)?)/i)
  end

  depends_on :macos

  app "AKS desktop.app"

  uninstall quit: "com.microsoft.aks-desktop"

  zap trash: [
    "~/Library/Application Support/AKS desktop",
    "~/Library/Logs/AKS desktop",
    "~/Library/Preferences/com.microsoft.aks-desktop.plist",
  ]
end
