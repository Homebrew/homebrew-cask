cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.39"
  sha256 arm:   "36be2c89b20d80decee1befdfc2c17c82a41c40481ede053a7ae02cd02f75d48",
         intel: "316ca06bee8695ebc7e60ead928cc7d17c724f16e8fe6581bf85906d053ba1a3"

  url "https://github.com/xpf0000/PhpWebStudy/releases/download/v#{version}/PhpWebStudy-#{version}#{arch}-mac.zip",
      verified: "github.com/xpf0000/PhpWebStudy/"
  name "PhpWebStudy"
  desc "PHP and Web develop environment manager"
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
