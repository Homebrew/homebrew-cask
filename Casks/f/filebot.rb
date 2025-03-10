cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.1.7"
  sha256 arm:   "262fbbf7d9503ba04aa3dfb9ac50d6f2a1850dd2d72538e0bbf016f97d3055fa",
         intel: "f8a7976ac064a3effdcb08077aefe259357954d4654a6f712cec488cddd112ed"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}_#{arch}.pkg"
  name "FileBot"
  desc "Tool for organising and renaming movies, TV shows, anime or music"
  homepage "https://www.filebot.net/"

  livecheck do
    url "https://www.filebot.net/download.html"
    regex(/href=.*?FileBot[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  depends_on macos: ">= :catalina"

  pkg "FileBot_#{version}_#{arch}.pkg"
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: "filebot"
  binary "#{appdir}/FileBot.app/Contents/Resources/bash_completion.d/filebot_completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/filebot"

  uninstall pkgutil: "net.filebot.FileBot.pkg",
            delete:  "#{appdir}/FileBot.app"

  zap trash: [
    "~/Library/Application Scripts/net.filebot.FileBot",
    "~/Library/Containers/net.filebot.FileBot",
    "~/Library/Preferences/net.filebot.FileBot.app.plist",
    "~/Library/Preferences/net.filebot.ui.plist",
    "~/Library/Saved Application State/net.filebot.FileBot.app.savedState",
    "~/Library/Saved Application State/net.filebot.FileBot.savedState",
  ]
end
