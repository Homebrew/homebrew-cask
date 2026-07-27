cask "flyenv" do
  arch arm: "-arm64"

  version "4.17.2"
  sha256 arm:   "f7572dc4f72b4180232b094f76006738a6011d3d74658afe1a198a63419b425a",
         intel: "6ca395a4ccb5f4422fbaa717a55e5a17cafe9fa91f8bd4e6d852352591faf905"

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
