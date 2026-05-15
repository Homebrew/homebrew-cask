cask "flyenv" do
  arch arm: "-arm64"

  version "4.15.1"
  sha256 arm:   "844c349c092f686ed4b408fe092ba1af3d2fcfe204e9a46828b4678a0e50937c",
         intel: "96d3f40e669217789fe79d448fb8b576a1a68d12538458de13a88eb9794e6197"

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
