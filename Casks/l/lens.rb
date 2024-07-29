cask "lens" do
  arch arm: "-arm64"

  version "2024.7.161041"
  sha256 arm:   "2687fb15d20f279e037d5fcb1ad27503abd888e219aec4eff2088b710cbd4adb",
         intel: "5a0109d22e55b50c2ea23b21d1f0ad1abbf01fcc2a50091fca1ea28f44fb133d"

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
