cask "flyenv" do
  arch arm: "-arm64"

  version "4.6.1"
  sha256 arm:   "1131b8b4093d42e6c2c107e39ac8dc3286f0966ed7deeb9ccb7cf268f16ddb88",
         intel: "72de7a7ecee3dc3faa9aa8e677c9d12dbd192e1f0897eb76f2cd6d0b764e7bc6"

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
