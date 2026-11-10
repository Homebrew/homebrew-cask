cask "lens" do
  arch arm: "-arm64"

  version "2026.11.91422"
  sha256 arm:   "408cc1c31cbb0893c70a591262c83978f0ab24acdbf56e900ac9dd23bf0e496e",
         intel: "cff671eece604c107b7f42a986e918f93dbfa8ed7ed7b9ad4a38d4a7380e591c"

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
