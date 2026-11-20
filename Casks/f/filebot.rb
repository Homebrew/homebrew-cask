cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.3.0"
  sha256 arm:   "165ad8a6938197f0903637d35d1d09ad6f251d76c1c39ac25f621ba346e75768",
         intel: "0c1ad4ea62594d1acb50c93f71328b93297e4c2163b5f8a89db97b499ed97b0a"

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
