cask "lens" do
  arch arm: "-arm64"

  version "2023.8.231521"
  sha256 arm:   "6c8e575f70443daba5942d91d4a78f93566fd8a85167b6b5bfd6a873b19e9d47",
         intel: "4011c83ae30ddb1e2400bd1e042fe2c42940fcb9dd8e0426b0c5b30e23c3e7f7"

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
