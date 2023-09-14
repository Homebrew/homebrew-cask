cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.50"
  sha256 arm:   "bd0ea25c0a434f2a290475062fb32e0fec4a5f85d608eaa4118740d0ae3f4c2a",
         intel: "712d41b33a7624bfa1b2f2b2d35900cec879d773b332539653c1317db3b9909b"

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
