cask "lens" do
  arch arm: "-arm64"

  version "2024.8.291605"
  sha256 arm:   "a8d5df41001b8646791e9ff0c7e95d52f50f05ee68e58247e1558352aaecb124",
         intel: "d75aaa0861fd699fe6a1674e21c2db08145f272972105bd09af1f0cf18dc17c5"

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
