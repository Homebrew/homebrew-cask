cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "d2434df7febc1d2210a0ca8fb87e72583eab02195e94f4b19dce05a5e62a9831",
         intel: "1cb677c7caa19eb6ce7f14a4dd9e595bccfd1437dd98b6efe2eecd60683ef251"

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
