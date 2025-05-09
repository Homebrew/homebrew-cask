cask "lens" do
  arch arm: "-arm64"

  version "2025.5.81206"
  sha256 arm:   "d576d53807f4de451b9c1f670ff006db60513b37d8532e9c5c250f868283b9cd",
         intel: "ee93a0295e59b71d4ecc3b86995cee0290e74836746316583a3cae3f3927c12e"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub("-latest", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
