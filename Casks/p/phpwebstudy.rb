cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "ebfbd389233ccc62d5c7491147157fdea406a5a5adb5bdff92aa16ad82a921b8",
         intel: "5804ac5af3470c1490d4fe29bfff4b57c1911ac7735994a2e17ff97ec87b6450"

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
