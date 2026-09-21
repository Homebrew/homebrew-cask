cask "lens" do
  arch arm: "-arm64"

  version "2026.9.181013"
  sha256 arm:   "3bd65fd0cdc2b40b97bab171fc83bd759de6b9cbb092498a84fbc63d7b6ffdbf",
         intel: "6502de3c5075197026c87f8b86855a480b9d0832815cde9be1d4952550b4fc33"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
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
  depends_on macos: :monterey

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
