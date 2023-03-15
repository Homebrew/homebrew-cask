cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "5eead1dec259b3a20c8beb6985c965b9df1b66e5940291dd814001f00c46c896",
         intel: "0c77b85f3f183697a952f771fc3f2eb21bcdd49e9e833f58dbe042f143903b96"

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
