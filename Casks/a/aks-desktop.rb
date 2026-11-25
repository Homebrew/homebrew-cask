cask "aks-desktop" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "5ad7c1c77d5ac9561cda2e818ddc947964e8351481d4700da6930616377708ad",
         intel: "6f92c1b932a1c642c0c3c5951734e912d2afd5849a19df26babe1c2ea4ec9a72"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.aksdesktop.sfl*",
    "~/Library/Logs/AKS desktop",
    "~/Library/Preferences/com.microsoft.aks-desktop.plist",
    "~/Library/Preferences/com.microsoft.aksdesktop.plist",
  ]
end
