cask "toontown-rewritten" do
  version "1.5.1"
  sha256 "c88cd534c903ffc0a5e8696de4f18455e1193b18afa607db54689283c951b4df"

  url "https://download.toontownrewritten.com/launcher/mac/updates/#{version}/ttr_launcher_#{version}.zip"
  name "Toontown Rewritten"
  name "Toontown Launcher"
  desc "Fan-made revival of Disney's Toontown Online"
  homepage "https://www.toontownrewritten.com/"

  livecheck do
    url "https://download.toontownrewritten.com/launcher/mac/Toontown%20Rewritten.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8037
  app "Toontown Launcher.app", target: "Toontown Rewritten.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.toontownrewritten.toontown-launcher.sfl*",
    "~/Library/Caches/com.toontownrewritten.Toontown-Launcher",
    "~/Library/HTTPStorages/com.toontownrewritten.Toontown-Launcher",
    "~/Library/Preferences/com.toontownrewritten.Toontown-Launcher.plist",
    "~/Library/Saved Application State/com.toontownrewritten.Toontown-Launcher.savedState",
  ]
end
