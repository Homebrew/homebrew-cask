cask "lens" do
  arch arm: "-arm64"

  version "2026.6.260931"
  sha256 arm:   "b30b9266baf85485e42acc819e838b202cbeb8b6c03a1a295453547aa548abdc",
         intel: "cc895b846bc4826df91a938e223f916267799c914aa2128486bf566122d70c99"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg",
      verified: "api.k8slens.dev/binaries/"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://lenshq.io/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub("-latest", "")
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
