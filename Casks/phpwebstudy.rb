cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.45"
  sha256 arm:   "1838f26d877e69fe9847842c0b4addf605ec26b0c37e48f88762797b020e087a",
         intel: "772a3ee610a54745296dfe6ea10833cbf9ad0e8c83f77bbbfc48a39dd597ba35"

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
