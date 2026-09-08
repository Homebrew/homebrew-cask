cask "lens" do
  arch arm: "-arm64"

  version "2026.9.20601"
  sha256 arm:   "62679820a44362672030021076938aebb04c36281d94375bc9279970ee4a7e48",
         intel: "72b40b848201e4ccdd7c6e632d70231b476a21c44e3fd3960326113eac1e2754"

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
