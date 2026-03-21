cask "flyenv" do
  arch arm: "-arm64"

  version "4.13.6"
  sha256 arm:   "fd733974e919c4f745e51407febd9467c5ac68cbd8b58bee0a2be46a9a0e9031",
         intel: "c106fe86db417ac8544144c0a467ed62b198ef52209b0dac7a3418af3a4d9638"

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
