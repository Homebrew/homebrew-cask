cask "textual" do
  on_big_sur :or_older do
    version "7.2.6"
    sha256 "0ae5515f8862ffc04ad7115277e192531644a3ed1fa2faeef456182c5d8f8ba6"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "7.2.8"
    sha256 "10098131330eafbf6b040139cb5ae2493b61a7dc5e91832fc716387d93126d99"

    livecheck do
      url "https://www.textualapp.com/docs/legacy/guides/direct-download-links"
      regex(/href=.*?Textual[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end
  end

  url "https://www.textualapp.com/downloads/Textual-#{version}.dmg"
  name "Textual"
  desc "Application for interacting with Internet Relay Chat (IRC) chatrooms"
  homepage "https://www.textualapp.com/"

  auto_updates true
  depends_on :macos

  app "Textual.app"

  zap trash: [
    "~/Library/Application Scripts/8482Q6EPL6.com.codeux.apps.textual",
    "~/Library/Application Scripts/8482Q6EPL6.com.codeux.irc.textual",
    "~/Library/Application Scripts/com.codeux.apps.textual*",
    "~/Library/Application Support/Textual",
    "~/Library/Containers/com.codeux.apps.textual",
    "~/Library/Group Containers/8482Q6EPL6.com.codeux.apps.textual",
    "~/Library/Group Containers/8482Q6EPL6.com.codeux.irc.textual",
    "~/Library/Group Containers/com.codeux.apps.textual*",
    "~/Library/Preferences/com.codeux.apps.textual.plist",
  ]
end
