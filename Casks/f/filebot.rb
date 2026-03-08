cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.2.1"
  sha256 arm:   "16bd651406b235ad505b8838d28fcb512d39e28389973476da0728d085ed73ca",
         intel: "522ed754478285d2970969d127b86f6a122181a3d1cd7ff3356129c147c50e59"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}_#{arch}.pkg"
  name "FileBot"
  desc "Tool for organising and renaming movies, TV shows, anime or music"
  homepage "https://www.filebot.net/"

  livecheck do
    url "https://www.filebot.net/download.html"
    regex(/href=.*?FileBot[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  pkg "FileBot_#{version}_#{arch}.pkg"
  bash_completion "#{appdir}/FileBot.app/Contents/Resources/bash_completion.d/filebot_completion", target: "filebot"

  uninstall pkgutil: "net.filebot.FileBot.pkg",
            delete:  "/Applications/FileBot.app"

  zap trash: [
    "~/Library/Application Scripts/net.filebot.FileBot",
    "~/Library/Containers/net.filebot.FileBot",
    "~/Library/Preferences/net.filebot.FileBot.app.plist",
    "~/Library/Preferences/net.filebot.ui.plist",
    "~/Library/Saved Application State/net.filebot.FileBot.app.savedState",
    "~/Library/Saved Application State/net.filebot.FileBot.savedState",
  ]
end
