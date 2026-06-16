cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "5b8a1c72850b633302c3fa681ecef1e6318b92d4ccad74f1e733c50220ebc787",
         intel: "dcfdde17d97bea4c87d8b7acca6c99d4326ab432521c1934e2370fa00b497855"

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
