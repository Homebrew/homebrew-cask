cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "cedf2ac64d42e76103e44bb3f01531e393ce105247996165978b41308e4faa2d",
         intel: "2b8d7bfa0a040dfbbc06c5d9c8b05099572bbd9267ea329287aa3bcaffb05eb7"

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
