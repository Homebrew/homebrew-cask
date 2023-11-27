cask "lens" do
  arch arm: "-arm64"

  version "2023.11.241450"
  sha256 arm:   "4b984868e48967a5c1a79e37d00368716041f0d6eb0989261eaca4cc3bc6d3ef",
         intel: "39eb6e98c0b4d1eeb880ab20f63ca33cf62f22e2bca24591936a8820d80d217f"

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
