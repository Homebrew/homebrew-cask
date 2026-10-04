cask "argo-books" do
  arch arm: "arm64", intel: "x64"

  version "2.0.19"
  sha256 arm:   "45fcab787e0b5a88beb1c9673cb04aeee07c461b0b8e36feb891095491647b45",
         intel: "bf670cd32a286a5e9b8ed676fec0c722eaaf3fafcdcfb7107f1765743e89469c"

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
