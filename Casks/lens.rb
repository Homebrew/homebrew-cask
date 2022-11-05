cask "lens" do
  arch arm: "-arm64"

  version "2022.11.41813"
  sha256 arm:   "56cde7d01dbf6ffa691c206d24e961e430bd7cfed2ed6472574f220b8b26cd2b",
         intel: "284fa07343a9c214f9d13117e6eb32f1ad64b6a307f2c25c43bbc335116c7fb3"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest", "")
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
