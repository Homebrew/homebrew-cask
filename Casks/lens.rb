cask "lens" do
  version "4.2.0"
  sha256 "73893375a0ead31bbe7e592b89196383f19dd3234490707628ced6df5b76a277"

  url "https://github.com/lensapp/lens/releases/download/v#{version}/Lens-#{version}.dmg",
      verified: "github.com/lensapp/lens/"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
