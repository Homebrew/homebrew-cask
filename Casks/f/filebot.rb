cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.1.4"
  sha256 arm:   "054fcbc172640bcf2d888e5b00ca698a17644fc2a1e8936de1b342221b515ded",
         intel: "67831b0324551d0dce32b28a357ec8bf0e4ae6e95ea8682a84f92618756424fb"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}_#{arch}.app.tar.xz"
  name "FileBot"
  desc "Tool for organising and renaming movies, TV shows, anime or music"
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
