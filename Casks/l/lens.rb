cask "lens" do
  arch arm: "-arm64"

  version "2023.10.122002"
  sha256 arm:   "3754cdfba8f4155d263b6841f80246cce5f71011991c62fd184808050db852fd",
         intel: "e46a3c8c3bc62c7b3cd97a9434139192303b3f6713a4dd5d4310e9541fe4ca8b"

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
