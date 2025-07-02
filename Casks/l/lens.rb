cask "lens" do
  arch arm: "-arm64"

  version "2025.6.261308"
  sha256 arm:   "ca4ecb93513d64c260c760470b2b9af1dc7f443c4cefee7c3c9f71c6379ffc35",
         intel: "1ddc0d064ecfdfe99f8fe5caa37af1d7fe82fb8d7808d592728e7140eb026020"

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
