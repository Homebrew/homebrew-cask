cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "6ea8e270a24662eb0798d5cd69a24bb8049e73c14424cdba76a1b13f0b535b10",
         intel: "6350cda716fe6da388b75443218c28b7d665afeec063aaa793e63cca600ba797"

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
