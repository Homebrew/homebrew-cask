cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.2.3"
  sha256 arm:   "1f590c7f70122c5c4614989571323dc7956e77ee9463bb91f3fba538a82846fb",
         intel: "1382721b03872653309d4d86e2a1fe2df822b0c9c0fa8e74c6317d9eb0ade97c"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}_#{arch}.pkg"
  name "FileBot"
  desc "Tool for organising and renaming movies, TV shows, anime or music"
  homepage "https://www.filebot.net/"

  livecheck do
    url "https://www.filebot.net/download.html"
    regex(/href=.*?FileBot[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  depends_on :macos

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
