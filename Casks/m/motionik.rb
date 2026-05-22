cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "4cc2502c79840e216572b60fe6a8b4007e929b85f1e6468fda368c925074b83a",
         intel: "3c79bbaba57b3f741a0a5c3e8ccb00a2acb46d6187379765a70e4c42855e9faa"

  url "https://assets.motionik.com/releases/Motionik-#{version}-#{arch}.dmg"
  name "Motionik"
  desc "Screen recording software"
  homepage "https://motionik.com/"

  livecheck do
    url "https://assets.motionik.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Motionik.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.motionik.screenrecorder.sfl*",
        "~/Library/Application Support/motionik",
        "~/Library/Logs/motionik",
        "~/Library/Preferences/com.motionik.screenrecorder.plist",
      ],
      rmdir: "~/Motionik-Recordings"
end
