cask "lens" do
  arch arm: "-arm64"

  version "2025.8.121212"
  sha256 arm:   "0bac6ced8f0d1b0ea124493db5c0ca7471059f4fd246227abe206ca0dc2e9fdb",
         intel: "e49800dfcf2e6e880717f9508e08e7440456264136ad3d6e85d58f06893c69db"

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

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
