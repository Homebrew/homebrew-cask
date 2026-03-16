cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0-beta"
  sha256 arm:   "b9ec490ce407cf84f778b8e80d4393059b7344834faeeb6ac36ac98765681313",
         intel: "c57d9645d4c000d3fa0a7528a88f6032d153a0a0679ae5038bf0049215f423a7"

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
