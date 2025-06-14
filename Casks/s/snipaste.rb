cask "snipaste" do
  version "2.10.8"
  sha256 "7038e75db8df481a34f77630244247306d9e603009dc5a02b88ae1d8ea9c5ac9"

  url "https://download.snipaste.com/archives/Snipaste-#{version}.dmg"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://dl.snipaste.com/mac"
    regex(/Snipaste[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: [
    "~/.snipaste/",
    "~/Library/Preferences/com.Snipaste.plist",
  ]
end
