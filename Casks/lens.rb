cask "lens" do
  version "4.2.1"
  sha256 "edd299988416a471012618e70df1066bb2425fa3ea9e7ab3853e8f0186449b49"

  url "https://github.com/lensapp/lens/releases/download/v#{version}/Lens-#{version}.dmg",
      verified: "github.com/lensapp/lens/"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  auto_updates true

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
