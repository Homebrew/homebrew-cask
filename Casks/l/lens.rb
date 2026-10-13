cask "lens" do
  arch arm: "-arm64"

  version "2026.10.121159"
  sha256 arm:   "867bd32ff33867b5c590da814f8e946d553c2c19ca7b15cf2fb3880a66356f00",
         intel: "8e499d4ec7abc4e27d562592094fd07f5f4e3fc3340f62feca25c9cf7ff500b5"

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
