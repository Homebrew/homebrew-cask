cask "lens" do
  arch arm: "-arm64"

  version "2025.6.21515"
  sha256 arm:   "08c335266384e0a5db69946377fba2a2ff7fdd53b5f43135bb282168aadd400f",
         intel: "e254113ff8da3dc559fc2a2a8ade36942500dbd5278851c44d58e3c1b91daaa6"

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
