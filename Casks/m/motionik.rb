cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "b1c24476f75955822d0c23264f1ddff88c3dbdd8ab7c1a19547396ac85c585df",
         intel: "56b7eacaeea78253e1feef9b361bbc499a3b2383ec1e5778b93e7edc14ac8bd8"

  url "https://assets.motionik.com/releases/Motionik-#{version}-#{arch}.dmg"
  name "Motionik"
  desc "Screen recording software"
  homepage "https://motionik.com/"

  livecheck do
    url "https://assets.motionik.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :ventura"

  app "Motionik.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.motionik.screenrecorder.sfl*",
        "~/Library/Application Support/motionik",
        "~/Library/Logs/motionik",
        "~/Library/Preferences/com.motionik.screenrecorder.plist",
      ],
      rmdir: "~/Motionik-Recordings"
end
