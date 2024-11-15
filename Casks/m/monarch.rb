cask "monarch" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "e6c3af45451c0f88c312e24059d0ce0cb4c615b13dc2cecd8742a80f6232286e",
         intel: "8af3bc79b1cc9769002cacbf18302daa7cb48a7796728aab49969ef550a464fc"

  on_arm do
    version "0.7.11"
  end
  on_intel do
    version "0.7.11"
  end

  url "https://storage.googleapis.com/monarchlauncher/#{arch}/monarch-#{version}.dmg",
      verified: "storage.googleapis.com/monarchlauncher/"
  name "Monarch"
  desc "Spotlight Search"
  homepage "https://monarchlauncher.com/"

  livecheck do
    url "https://storage.googleapis.com/monarchlauncher/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Monarch.app"

  zap trash: [
    "~/Library/Application Support/monarch",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
  ]
end
