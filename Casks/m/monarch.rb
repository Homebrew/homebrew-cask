cask "monarch" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "291a674abb3ef0b931ba52631ede14d4ccda19ca1b636be73de519eb04760226",
         intel: "b92e8cff4484f86f748694d5ced5b113b9845dbf9ae1d6df61a397a00cac9546"

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
