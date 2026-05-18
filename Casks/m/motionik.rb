cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "2.2.3"
  sha256 arm:   "d3429f82f542d731b3081b009bb4e51294fdb813a9d446ed405949e73a1840f2",
         intel: "8d7829ce10d86fb835b8491185bce85dfb5dbac5bc2ab7215a8c2240936a317c"

  url "https://assets.motionik.com/releases/Motionik-#{version}-#{arch}.dmg"
  name "Motionik"
  desc "Screen recording software"
  homepage "https://motionik.com/"

  livecheck do
    url "https://assets.motionik.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Motionik.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.motionik.screenrecorder.sfl*",
        "~/Library/Application Support/motionik",
        "~/Library/Logs/motionik",
        "~/Library/Preferences/com.motionik.screenrecorder.plist",
      ],
      rmdir: "~/Motionik-Recordings"
end
