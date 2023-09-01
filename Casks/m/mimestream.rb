cask "mimestream" do
  version "1.1.1"
  sha256 "79bb9bf182c1ec6eb255db6266045bd20c6ac6bcf97b41aba1b694062f02da02"

  url "https://download.mimestream.com/Mimestream_#{version}.dmg"
  name "Mimestream"
  desc "Native app email client for Gmail"
  homepage "https://mimestream.com/"

  livecheck do
    url "https://mimestream.com/releases"
    regex(/Version\sv?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Mimestream.app"

  zap trash: [
    "~/Library/Application Scripts/com.mimestream.Mimestream*",
    "~/Library/Caches/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream*",
    "~/Library/Preferences/com.mimestream.Mimestream.plist",
    "~/Library/Saved Application State/com.mimestream.Mimestream.savedState",
  ]
end
