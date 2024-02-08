cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.8.0"
  sha256 arm:   "fde169fcfe7273247d948fd9ee7904ed59b04c0b814ef04fe58e366dede36ad7",
         intel: "69e00d246da60e65d76096a58280c5e7b495db7c0dfd420d64e52c8c691e4880"

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
