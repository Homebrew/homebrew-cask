cask "flyenv" do
  arch arm: "-arm64"

  version "4.17.1"
  sha256 arm:   "324bed0cc1b3f142ccdf2f8158479027cff3496126ebabdefa9f933821db2617",
         intel: "a2a24fb33a84e50ac8dc7b21b68f316fa191f1715b980b732125c0495ba5f35e"

  url "https://github.com/xpf0000/FlyEnv/releases/download/v#{version}/FlyEnv-#{version}#{arch}-mac.zip",
      verified: "github.com/xpf0000/FlyEnv/"
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
