cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.5.0"
  sha256 arm:   "15e808d0f3c22b73d5b83083e5d1bc31baeed7e939c3582e999c7d97a6e040c5",
         intel: "c33a05e40626b3edeefe0bae77cd4590d55f722dd8f86ec24ce2a65083ebfec8"

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
