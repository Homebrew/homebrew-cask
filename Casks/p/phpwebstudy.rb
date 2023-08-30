cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.48"
  sha256 arm:   "e295988d972d360c267033c781517d834f296bf8341edc9fdd244c0ad37d62a0",
         intel: "d5e5c80fb645ed276ff41e62f5dd983dfc7fcf5ba1a21247386ff5216ffe8763"

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
