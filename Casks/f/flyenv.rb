cask "flyenv" do
  arch arm: "-arm64"

  version "4.6.0"
  sha256 arm:   "e71cc6097a58b035568d7a2249deba3e0def7b5387e83368b10f7796466c2eb6",
         intel: "358ab6863cbf1a33f13be0a56f0145a2b17cdc6003c279f851c2f5bc44d711ac"

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
  depends_on macos: ">= :catalina"

  app "FlyEnv.app"

  zap trash: [
    "~/Library/Application Support/PhpWebStudy",
    "~/Library/Logs/PhpWebStudy",
    "~/Library/PhpWebStudy",
    "~/Library/Preferences/phpstudy.xpfme.com.plist",
  ]
end
