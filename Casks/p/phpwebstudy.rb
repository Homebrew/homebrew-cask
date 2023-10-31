cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.1.0"
  sha256 arm:   "1143fb3300ba11ef1dbf421826de2a23e2015237c28acf703fa34750fb146f3e",
         intel: "267195f75b1a362dd7d907b083779f499aff7385026238f6917f0727c88210d3"

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
