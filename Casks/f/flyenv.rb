cask "flyenv" do
  arch arm: "-arm64"

  version "4.18.2"
  sha256 arm:   "361adcead52c7334bc88a27e664e53db87be0ea012f69fa9c85374262e53b302",
         intel: "ddc2d212dc2f7d9cd686a5c47986acd4d4d43aa23aac3106ec1e73fdc80a85aa"

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
