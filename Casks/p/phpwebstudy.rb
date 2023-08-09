cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.46"
  sha256 arm:   "5c612d3ba5da16b0c80bcb1555c13dd4c261a17255dfc890514084df6493d46e",
         intel: "7be3c80c1eb815aa28d0c3bd559f9817ca6921d5c34258937391c1d11254bad0"

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
