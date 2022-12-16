cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.32"
  sha256 arm:   "64bfede82df2ff78549414c926eecdf77b4072d8e2b28a39d13ebc57c3fb2eee",
         intel: "924b43e4bf21dc7026994a4ba0c971d371360f5ad70c75c1003eda00fa4fd537"

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
