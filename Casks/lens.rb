cask "lens" do
  version "4.2.3"
  sha256 "4a59e904518e92642f8a36dd0d4269bad6af8483d034e380b0757372d5ed0183"

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
