cask "lens" do
  version "4.2.2"
  sha256 "d34753f6da17df2bfd89525ec6f5a521c00f8a512c7b245b3153ec7a302d5198"

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
