cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "cf29c6d712c6b61331f5204dadb96ade2f58b8f17e9975dc8358e8c47bd17e77",
         intel: "d53a855b135f052c571224db1210a870cb9ceb89ef8c23709fcb7e8c646ec58f"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}_#{arch}.app.tar.xz"
  name "FileBot"
  desc "Tool for organizing and renaming movies, TV shows, anime or music"
  homepage "https://www.filebot.net/"

  livecheck do
    url "https://www.filebot.net/download.html"
    regex(/href=.*?FileBot[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  app "FileBot.app"
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: "filebot"
  binary "#{appdir}/FileBot.app/Contents/Resources/bash_completion.d/filebot_completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/filebot"

  zap trash: [
    "~/Library/Application Scripts/net.filebot.FileBot",
    "~/Library/Containers/net.filebot.FileBot",
    "~/Library/Preferences/net.filebot.FileBot.app.plist",
    "~/Library/Preferences/net.filebot.ui.plist",
    "~/Library/Saved Application State/net.filebot.FileBot.app.savedState",
    "~/Library/Saved Application State/net.filebot.FileBot.savedState",
  ]
end
