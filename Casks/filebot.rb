cask "filebot" do
  version "4.9.3"
  sha256 "208662e8e4c2a17fe62297e1f14ea2418382e22cd4e8babbe073c01e3396c735"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.xz"
  name "FileBot"
  desc "Tool for organizing and renaming movies, TV shows, anime or music"
  homepage "https://www.filebot.net/"

  livecheck do
    url "https://www.filebot.net/download.html"
    regex(/href=.*?FileBot[._-]v?(\d+(?:\.\d+)+)\.app\.t/i)
  end

  app "FileBot.app"
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: "filebot"
  binary "#{appdir}/FileBot.app/Contents/Resources/bash_completion.d/filebot_completion",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/filebot"

  zap trash: "~/Library/Preferences/net.filebot.ui.plist"
end
