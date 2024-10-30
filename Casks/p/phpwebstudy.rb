cask "phpwebstudy" do
  arch arm: "-arm64"

  version "4.5.1"
  sha256 arm:   "d1143bec14ceaca4d084d8cc71667af3ed74d1bb985f2b3487546699f7025ab1",
         intel: "ad3d9b012c8ff0998703b434a68312e081d1ceecfece3687faca661ce032400d"

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
