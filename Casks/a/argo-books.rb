cask "argo-books" do
  arch arm: "arm64", intel: "x64"

  version "2.0.18"
  sha256 arm:   "01cccf804de5199562827aeb6d3768183deb87c6855b69a6f7599d12b3f4126d",
         intel: "31cd4b0d639f448d2c2617cbc072f1cfeb4922f2186466729dab97bae2d0f311"

  url "https://argorobots.com/resources/downloads/#{version}/ArgoBooks-#{version}-osx-#{arch}.zip"
  name "Argo Books"
  desc "Accounting software for small businesses"
  homepage "https://argorobots.com/"

  livecheck do
    url "https://argorobots.com/avalonia-update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Argo Books.app"

  uninstall quit: "com.argobooks.ArgoBooks"

  zap trash: [
    "~/Library/Application Support/ArgoBooks",
    "~/Library/Caches/com.argobooks.ArgoBooks",
    "~/Library/HTTPStorages/com.argobooks.ArgoBooks",
    "~/Library/Preferences/com.argobooks.ArgoBooks.plist",
    "~/Library/Saved Application State/com.argobooks.ArgoBooks.savedState",
  ]
end
