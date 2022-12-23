cask "lens" do
  arch arm: "-arm64"

  version "2022.12.221341"
  sha256 arm:   "5be9f692ba257a325b135afaad80950abbd809a7f7be96fe25c388c81da841cf",
         intel: "fad4318f73d2cbbdebde82e8330ec8535c1b15904838eb721f2140856b698b11"

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
