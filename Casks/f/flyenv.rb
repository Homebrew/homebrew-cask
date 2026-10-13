cask "flyenv" do
  arch arm: "-arm64"

  version "4.20.1"
  sha256 arm:   "29e6a772e1c9d782e9102782e0396bda3884f644b371fe384b3698328833b4ef",
         intel: "b22c93876d7102681c9614513ec9f4f1fae4751c339b973969c084b19e928ae4"

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
