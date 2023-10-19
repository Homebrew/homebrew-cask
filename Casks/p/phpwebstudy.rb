cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.55"
  sha256 arm:   "d450f4f1ffcce13de716e298bcaae3b7fb0b2ba533cb308e278aa0175909c6a4",
         intel: "e9da4e225ebfb0b72ca4c1f576fdd68b5a8b807a7bbdfda30f757cd5a4559cb4"

  url "https://github.com/xpf0000/PhpWebStudy/releases/download/v#{version}/PhpWebStudy-#{version}#{arch}-mac.zip",
      verified: "github.com/xpf0000/PhpWebStudy/"
  name "PhpWebStudy"
  desc "PHP and Web development environment manager"
  homepage "https://www.macphpstudy.com/"

  livecheck do
    url "https://raw.githubusercontent.com/xpf0000/PhpWebStudy/master/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "PhpWebStudy.app"

  zap trash: [
    "~/Library/Application Support/PhpWebStudy",
    "~/Library/Logs/PhpWebStudy",
    "~/Library/PhpWebStudy",
  ]
end
