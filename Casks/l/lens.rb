cask "lens" do
  arch arm: "-arm64"

  version "2023.12.281947"
  sha256 arm:   "994e3904f0209f96bd6f8022640deb8062208e6472c7f7f436e79a708066f5e0",
         intel: "063f97097cf601c7b2c8e8daa79bdd5c96a2f61522cf0f185f65f759f0ca72d0"

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
