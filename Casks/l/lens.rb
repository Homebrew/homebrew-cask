cask "lens" do
  arch arm: "-arm64"

  version "2026.3.251250"
  sha256 arm:   "8c9465cf897984c9e4fdb0ef46e49556ea1ed92310b9974067746719a52ebe15",
         intel: "25ee7e32385e75f7d1c8a163a21d6125e7475c35004af5d9295775b1a2f069c7"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg",
      verified: "api.k8slens.dev/binaries/"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://lenshq.io/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub("-latest", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
