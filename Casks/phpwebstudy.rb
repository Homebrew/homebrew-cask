cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.42"
  sha256 arm:   "a7363c137b8c29e5e6a01527b77675a2c9b0daf7e0d55e064f7e714115c3acc2",
         intel: "8de523ef489285a55d22b0f09c57118d2926e7e5122e413a09443a4edc71db9a"

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
