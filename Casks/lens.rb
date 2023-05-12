cask "lens" do
  arch arm: "-arm64"

  version "2023.5.120950"
  sha256 arm:   "77702a938e0a15353961fda5b54fe70d7bc58a24552c6f4b409ec405893d34a9",
         intel: "b9c20fd09e1a16be0f094908b20f348dec75fcbc8eb029213d996a6780026641"

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
