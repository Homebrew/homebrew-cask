cask "phpwebstudy" do
  arch arm: "-arm64"

  version "4.5.0"
  sha256 arm:   "4884370244b6950caca8ab2dc7a25359f5d6e0332c297370d5de92039824a552",
         intel: "624368fe4cccfc54702dabe50041f06af88798cd6dfe7b6c577f6999acd62824"

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
