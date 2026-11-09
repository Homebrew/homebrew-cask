cask "cyd" do
  version "1.2.4"
  sha256 "f820724a2bbb5fea24d4e34f1c66eabb976dda60ab7f1c64ecf99b80e801630f"

  url "https://releases.lockdown.systems/cyd/prod/macos/universal/Cyd%20#{version}.dmg"
  name "Cyd"
  desc "Archive and delete your data on social media platforms"
  homepage "https://cyd.social/"

  livecheck do
    url "https://api.cyd.social/download?platform=macos"
    regex(/Cyd(?:%20|\s)v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Cyd.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/systems.lockdown.cyd.sfl*",
    "~/Library/Application Support/cyd",
    "~/Library/Preferences/systems.lockdown.cyd.plist",
  ]
end
