cask "lens" do
  arch arm: "-arm64"

  version "2026.10.51501"
  sha256 arm:   "35766b356edf2bc9d82061d059cb7bc43e3eb80bb54050cb0f49466228d78a61",
         intel: "9768902a3f831d04ccdbb48673c64f5e1d4ccfec5bdc76fb300c9017f801175c"

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
  depends_on macos: :ventura

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
