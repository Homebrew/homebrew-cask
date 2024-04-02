cask "phpwebstudy" do
  arch arm: "-arm64"

  version "2.4.2"
  sha256 arm:   "9fd93606283f6824ee6533bae3154fdd44bb15f3fbf5ef4c3a2830a04d42911e",
         intel: "a0256c2a8b2e8e5530ad29b03c63f184daa805b6db9873f1ebb6e5c7d5656236"

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
