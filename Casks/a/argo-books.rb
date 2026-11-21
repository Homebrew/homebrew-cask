cask "argo-books" do
  arch arm: "arm64", intel: "x64"

  version "2.0.24"
  sha256 arm:   "159531444915dae8474a8fadd3654c3d2675b41fdf58c7ad1e4504ab8ca80d2f",
         intel: "eb862c7bbab0c68aea3ab0f892d8da147c44f5421b4f951d994719e2ad6b2ae4"

  url "https://argorobots.com/resources/downloads/#{version}/ArgoBooks-#{version}-osx-#{arch}.zip"
  name "Argo Books"
  desc "Accounting software for small businesses"
  homepage "https://argorobots.com/"

  livecheck do
    url "https://argorobots.com/resources/updates/release.json"
    strategy :json do |json|
      json["version"]
    end
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
