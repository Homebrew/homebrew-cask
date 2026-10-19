cask "argo-books" do
  arch arm: "arm64", intel: "x64"

  version "2.0.21"
  sha256 arm:   "606a58fbff42fdbdb0889cf43ab3336193892ae71589b51a1b68ae091de2e44f",
         intel: "bcbb354defbcd70bbdf26b41b5c63423bbe9a04d56cff18871600404ae560ea5"

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
