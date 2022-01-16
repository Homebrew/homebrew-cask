cask "coda" do
  version "2.7.7,217503"
  sha256 "408556e281b96e7dbab20e21c6346af5ef68b0dd30688be75562466dab9d99fa"

  url "https://download.panic.com/coda/Coda%20#{version.csv.first}.zip"
  name "Panic Coda"
  desc "Text editor"
  homepage "https://panic.com/coda/"

  livecheck do
    url "https://www.panic.com/updates/update.php?appName=Coda%202&appVersion=1"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Coda #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Coda #{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.coda2.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda#{version.major}.help*",
    "~/Library/Caches/com.panic.Coda#{version.major}",
    "~/Library/Preferences/com.panic.Coda#{version.major}.plist",
    "~/Library/Saved Application State/com.panic.Coda#{version.major}.savedState",
  ]

  caveats do
    discontinued
  end
end
