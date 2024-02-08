cask "lens" do
  arch arm: "-arm64"

  version "2024.1.300751"
  sha256 arm:   "903676862e63a0c6a539b055304d4d3c0469c60174070a3c0f0e24aa28d26371",
         intel: "fef5e5ebcaac6b51da8e5b2f9ce8906e7859af5859e2c2c4d9110f1255218664"

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
