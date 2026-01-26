cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0-alpha"
  sha256 arm:   "be01ae7fe8e17b0737c58b7bf03ee38e39556d0354d98dad7da52ac389849fd3",
         intel: "98be1017eaf5efdddd48d2b9c9fee36269578f6e513e41961ec2a0a21c5dcbae"

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
