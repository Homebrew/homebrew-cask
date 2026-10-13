cask "argo-books" do
  arch arm: "arm64", intel: "x64"

  version "2.0.20"
  sha256 arm:   "ee85a4bd3fea4ce0e21ceeb4e3a7c4934b80d1390e374442eba66b005504c8cd",
         intel: "cc6036ea233f56defbca92a4a5f9774917243fdc6336d6aee3dddbe1c73fefe2"

  url "https://argorobots.com/resources/downloads/#{version}/ArgoBooks-#{version}-osx-#{arch}.zip"
  name "Argo Books"
  desc "Accounting software for small businesses"
  homepage "https://argorobots.com/"

  livecheck do
    url "https://argorobots.com/avalonia-update.xml"
    regex(/ArgoBooks[._-]v?(\d+(?:\.\d+)+)-osx/i)
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Argo Books.app"

  uninstall quit: "com.argobooks.ArgoBooks"

  zap trash: [
    "~/Library/Application Support/ArgoBooks",
    "~/Library/Caches/ArgoBooks",
    "~/Library/Caches/com.argobooks.ArgoBooks",
    "~/Library/HTTPStorages/com.argobooks.ArgoBooks",
    "~/Library/Preferences/com.argobooks.ArgoBooks.plist",
    "~/Library/Saved Application State/com.argobooks.ArgoBooks.savedState",
    "~/Library/WebKit/com.argobooks.ArgoBooks",
  ]
end
