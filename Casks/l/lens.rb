cask "lens" do
  arch arm: "-arm64"

  version "2025.4.92142"
  sha256 arm:   "f5db3b24e7172698bdee4a73221ad63fff0a5e451b3cd0c8aca9f7289f095db8",
         intel: "025d1a147098a2277c7e44a1fb322921197b79dde7a35337afe33baad502ae95"

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
