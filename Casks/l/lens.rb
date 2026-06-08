cask "lens" do
  arch arm: "-arm64"

  version "2026.5.250609"
  sha256 arm:   "35422972067007a6d79b650a7142bfcd3447df6ec21ce2bd9f4c7e228c0fea04",
         intel: "e530804095a1aec677b3a7f65a4e0417b78368be7e3ec5bb2156cf3c95fac1e2"

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
  depends_on macos: :monterey

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
