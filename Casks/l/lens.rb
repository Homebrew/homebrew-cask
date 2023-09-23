cask "lens" do
  arch arm: "-arm64"

  version "2023.9.221258"
  sha256 arm:   "1c2d12a3283b86581c8695dd9e7129b23e71b954ce92acb3e59040a370ce95f8",
         intel: "1abd095acbb55be736f768d5f000182a2560bdeebf8489ef4adfc7e48f7c8d5a"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :json do |json|
      json["version"].sub("-latest", "")
    end
  end

  auto_updates true

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
