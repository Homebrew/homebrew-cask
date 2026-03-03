cask "flyenv" do
  arch arm: "-arm64"

  version "4.13.3"
  sha256 arm:   "2955f3b60b6fc08ac18be0cff6e6a1f71654385dee47c3b19077f5cc3193c0d9",
         intel: "5ec6d296cfd4e7ee7f38ddeed7f85841fc3c2295b5844872e91ab4d45c619e50"

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
  depends_on macos: ">= :big_sur"

  app "FlyEnv.app"

  zap trash: [
    "~/Library/Application Support/PhpWebStudy",
    "~/Library/Logs/PhpWebStudy",
    "~/Library/PhpWebStudy",
    "~/Library/Preferences/phpstudy.xpfme.com.plist",
  ]
end
