cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "d12e789c2197b809dd18dfd2529f92c3a3383486eae0537ea9a7ae93424ee62b",
         intel: "8fbfe424592dbda08c1d40ce95b4e9d7556f1901f9e3b86950a252630303661d"

  url "https://monarchlauncher.s3.amazonaws.com/#{arch}/monarch-#{version}.dmg",
      verified: "monarchlauncher.s3.amazonaws.com/"
  name "Monarch"
  desc "Spotlight Search"
  homepage "https://monarchlauncher.com/"

  livecheck do
    url "https://monarchlauncher.s3.amazonaws.com/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Monarch.app"

  zap trash: [
    "~/Library/Application Support/monarch",
    "~/Library/Saved Application State/com.electron.monarch.savedState",
  ]
end
