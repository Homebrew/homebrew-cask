cask "lens" do
  arch arm: "-arm64"

  version "2023.5.310801"
  sha256 arm:   "5f1fba18f01f8e2a13aea7c54bb70587a75eada47e4eda8b9702db550c5f37c8",
         intel: "00653590e404601006a966b17eda9235574f11b94f0ee8ca4818cc79a54dc7a3"

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
