cask "argo-books" do
  arch arm: "arm64", intel: "x64"

  version "2.0.22"
  sha256 arm:   "ddfc5e9108d224062013f88a5d767793e34745a040a5c0be5e44fca54f74e6fd",
         intel: "2d46c80031fd71d46d27466d6e124caeadc02abc2299bb174ede47877f729504"

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
