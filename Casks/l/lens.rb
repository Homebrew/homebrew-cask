cask "lens" do
  arch arm: "-arm64"

  version "2024.5.271333"
  sha256 arm:   "1dc22728558a423649eaccc8e6fbc7df250fe1231f405a1e70fbd5d2659fad09",
         intel: "2bb3015c37becbbecbfe305d82f4e5a4b2e0d5589ad65a47699714525dc8812d"

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
