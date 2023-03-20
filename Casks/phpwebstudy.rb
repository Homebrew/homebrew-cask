cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.40"
  sha256 arm:   "b27ecf4ad3015cb698d9899dfd976df6d7c4ea67d80c1329c08d4e28e8dc43ef",
         intel: "50144bbb0302d6423b58b860df804cf83770b122282648c779c24fb6ab609e82"

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
