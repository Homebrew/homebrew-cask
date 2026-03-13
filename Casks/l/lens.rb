cask "lens" do
  arch arm: "-arm64"

  version "2026.3.130712"
  sha256 arm:   "a51cbbd59c0aac82213a9c5042cea8a2eb2723cca9b1b158a3025913b7c20cdc",
         intel: "8fe4aa23c9e772c802bbb2f0be786775ccbcedb4d2b303269114fa4b5d7911a8"

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
