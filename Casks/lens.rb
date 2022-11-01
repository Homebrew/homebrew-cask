cask "lens" do
  arch arm: "-arm64"

  version "2022.10.311317"
  sha256 arm:   "a3bef5e09a4f515234d3f9cd64f928589969ee4d6b9bc369d314cf63667dda10",
         intel: "aec5677488c9392253e951eb57fb9fc107010edd29064212d13eb7b4cfdbbcae"

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
