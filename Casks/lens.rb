cask "lens" do
  arch arm: "-arm64"

  version "2022.12.201157"
  sha256 arm:   "c6cb3c72eaefd355d5f18aeac6abcfbca3a0dd2c13fedf2d670df671b0c41a32",
         intel: "03149205c078693eb3638da8ae983d2270d150a41ac8a25d25dfa73bf4b2dc0b"

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
