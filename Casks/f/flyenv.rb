cask "flyenv" do
  arch arm: "-arm64"

  version "4.20.0"
  sha256 arm:   "a1551c9ed2b30123ffff9daeec18232264f32b845820121832a27e51fdb288b5",
         intel: "08b20204bdccdc202a75f8359a99aea4aa61459d848d5d6ad84d46c9656a00d5"

  url "https://github.com/xpf0000/FlyEnv/releases/download/v#{version}/FlyEnv-#{version}#{arch}-mac.zip"
  name "FlyEnv"
  desc "PHP and Web development environment manager"
  homepage "https://www.macphpstudy.com/"

  livecheck do
    url "https://raw.githubusercontent.com/xpf0000/FlyEnv/master/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "FlyEnv.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/phpstudy.xpfme.com.sfl*",
    "~/Library/Application Support/FlyEnv",
    "~/Library/Application Support/PhpWebStudy",
    "~/Library/FlyEnv",
    "~/Library/Logs/FlyEnv",
    "~/Library/Logs/PhpWebStudy",
    "~/Library/PhpWebStudy",
    "~/Library/Preferences/phpstudy.xpfme.com.plist",
  ]
end
