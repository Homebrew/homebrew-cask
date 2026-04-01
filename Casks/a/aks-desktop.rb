cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "bdca6544215592427650ce16bd3146fc4b515723e6e959693072fcac87125610",
         intel: "2fe13841311138c14b2f6a4ae444ec26e54a0b2100dccb201f10d3b6f593a4a9"

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
