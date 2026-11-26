cask "lens" do
  arch arm: "-arm64"

  version "2026.11.261430"
  sha256 arm:   "a7074c8338e977bc4bd08c5196845e143f0fbf2c507723602d5016439607ed5d",
         intel: "61ad4c6ef191b5794252c3ee1a248d4867859482ccca51be4a2746541d772875"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
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
  depends_on macos: :ventura

  app "Lens.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kontena-lens.sfl*",
        "~/Library/Application Support/Lens",
        "~/Library/Caches/Lens",
        "~/Library/Logs/Lens",
        "~/Library/Preferences/com.electron.kontena-lens.plist",
        "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
      ],
      rmdir: "~/.k8slens"
end
