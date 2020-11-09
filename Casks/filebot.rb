cask "filebot" do
  version "4.9.2"
  sha256 "15c92853503f17958e7fbbe5d4640458021327126a4b4c9410a9d3d8086e02dc"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.xz"
  appcast "https://app.filebot.net/update.xml"
  name "FileBot"
  desc "Tool for organizing and renaming movies, TV shows, anime or music"
  homepage "https://www.filebot.net/"

  app "FileBot.app"
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: "filebot"
  binary "#{appdir}/FileBot.app/Contents/Resources/bash_completion.d/filebot_completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/filebot"

  zap trash: "~/Library/Preferences/net.filebot.ui.plist"
end
