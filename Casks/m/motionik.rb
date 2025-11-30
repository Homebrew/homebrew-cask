cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "4733dec6d464c23163c46f21a41541f04fc6c9f4f037beb99bcf60781c8f9147",
         intel: "f09aaab9d7a383eaee2d857f0d8742b8e1704cbb35838510a174ba233a42d7f8"

  url "https://assets.motionik.com/releases/Motionik-#{version}-#{arch}.dmg"
  name "Motionik"
  desc "Screen recording software"
  homepage "https://motionik.com/"

  livecheck do
    url "https://assets.motionik.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Motionik.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.motionik.screenrecorder.sfl*",
        "~/Library/Application Support/motionik",
        "~/Library/Logs/motionik",
        "~/Library/Preferences/com.motionik.screenrecorder.plist",
      ],
      rmdir: "~/Motionik-Recordings"
end
