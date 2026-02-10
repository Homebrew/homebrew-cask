cask "lens" do
  arch arm: "-arm64"

  version "2026.2.20807"
  sha256 arm:   "455c2ccb0d7bec7571c5f7cf2d1983724628a67ad16a45102a66ea0dc1b57577",
         intel: "a6195ee8f9bb5e9b26991d39059241b1ea4c517ba41f2d53bbf4fc5e280ab7d5"

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
