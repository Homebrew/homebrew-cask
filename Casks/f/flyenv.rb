cask "flyenv" do
  arch arm: "-arm64"

  version "4.16.0"
  sha256 arm:   "7cbb1c84176bfc05ac6cadba69ec14b84f8eb0a33cd81bd7c8f31e5c4036bff2",
         intel: "4bdc8ac40b1c4af4b2ac4491f84c2953e79c039ad7ed9642b60f7a3ceeb92eeb"

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
    "~/Library/Application Support/PhpWebStudy",
    "~/Library/Logs/PhpWebStudy",
    "~/Library/PhpWebStudy",
    "~/Library/Preferences/phpstudy.xpfme.com.plist",
  ]
end
