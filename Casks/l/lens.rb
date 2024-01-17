cask "lens" do
  arch arm: "-arm64"

  version "2024.1.170738"
  sha256 arm:   "1c49cd145c26039225c07532d90014d00f2c7d49eb980423820162365d501faa",
         intel: "b8429e86de9b394cb41e5e56c4392d8cc63f1a109fdf363dfc1fdfb511cd3b02"

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
