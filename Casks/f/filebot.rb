cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.1.2"
  sha256 arm:   "f1e5faf8d669581bde28c06663d42419986ad75d3a4702d4a086ecb1f1bbdf67",
         intel: "02f4b0b726582f67997f7bff824d7f8fed93b8d3b29be04f8144601bc2030fca"

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
