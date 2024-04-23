cask "phpwebstudy" do
  arch arm: "-arm64"

  version "2.4.5"
  sha256 arm:   "c23bdb97ff2e726d7194861956b2d1bf1cdb571d7de61d7dc1ce41237b7198ef",
         intel: "87991fc205cec923b036511ecdd1041f9b7a9eb2a50c08c3ed9bbe9ce9cb9df6"

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
