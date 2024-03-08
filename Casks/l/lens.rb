cask "lens" do
  arch arm: "-arm64"

  version "2024.3.70925"
  sha256 arm:   "829d981ace004bd19d1cf0cc7c64d941dcf00daa562b326eb7ad229890d44d9b",
         intel: "068ddaff27a44001f540ac9431db90a67d7ce5f54d374b25f16d988a2692e088"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :json do |json|
      json["version"].sub("-latest", "")
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
