cask "lens" do
  arch arm: "-arm64"

  version "2026.10.261408"
  sha256 arm:   "784abc1d3ec6fe87aab5f8f6896f7b749edb641322ad8e173c34b17862c97418",
         intel: "34b1fe7859ee691c4d35567f2b0f5d0892381867cded6a55b06d8a51f272127c"

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
