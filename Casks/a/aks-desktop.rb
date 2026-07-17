cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "62d1e089ad396c4c08c823fd8b431f4efcef5b559cb07c892bae1ff10816a63f",
         intel: "4ec9278e83c2992742fd9d113cef357491d3d660acb5adca3c3ca4c1c382806c"

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
