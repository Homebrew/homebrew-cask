cask "lens" do
  arch arm: "-arm64"

  version "2024.10.101523"
  sha256 arm:   "6ba1ff8eaabc3e3bcdda985ce4fb12b2543093ebdf6c91da7e803f63c446435f",
         intel: "23ce5f7abe18fe84e1feb80ed11a3586690a6bf486d42ab7ecffc3c3e94dc2f3"

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
