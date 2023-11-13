cask "mutesync" do
  arch arm: "-arm64"

  version "5.6.5"
  sha256 arm:   "cda9bd7deb0c897572baefd5be8c73f308d011dee541f2864a0b23e5f3bf470a",
         intel: "daa84d035aae65de173b7e45866cf989cc2aead34ec153470bdf10a64998e7f2"

  url "https://mutesync.s3.us-west-2.amazonaws.com/mutesync-#{version}#{arch}.dmg",
      verified: "mutesync.s3.us-west-2.amazonaws.com/"
  name "mütesync"
  desc "Companion app to the mütesync physical button"
  homepage "https://mutesync.com/"

  livecheck do
    url "https://mutesync.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "mutesync.app"

  zap trash: [
    "~/Library/Application Support/mutesync/",
    "~/Library/Preferences/com.mutesync.electron.plist",
  ]
end
