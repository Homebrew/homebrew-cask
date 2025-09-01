cask "filebot" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0"
  sha256 arm:   "71bb89a968a30fa076ffd5a3e2443143f68d60b8487110915611659e7d5acad0",
         intel: "a32ddf766a55a9831c5aefbcaeecfbc5897b641a3b2f8490d476f17d27223735"

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}_#{arch}.app.tar.xz"
  name "FileBot"
  desc "Tool for organising and renaming movies, TV shows, anime or music"
  homepage "https://www.filebot.net/"

  livecheck do
    url "https://www.filebot.net/download.html"
    regex(/href=.*?FileBot[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.pkg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :catalina"

  app "FileBot.app"
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: "filebot"
  bash_completion "#{appdir}/FileBot.app/Contents/Resources/bash_completion.d/filebot_completion", target: "filebot"

  zap trash: [
    "~/Library/Application Scripts/net.filebot.FileBot",
    "~/Library/Containers/net.filebot.FileBot",
    "~/Library/Preferences/net.filebot.FileBot.app.plist",
    "~/Library/Preferences/net.filebot.ui.plist",
    "~/Library/Saved Application State/net.filebot.FileBot.app.savedState",
    "~/Library/Saved Application State/net.filebot.FileBot.savedState",
  ]
end
