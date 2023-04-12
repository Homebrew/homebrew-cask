cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.41"
  sha256 arm:   "739b8b819e37c58a14b0fb0c2395d05c8d6768a02e336fd85bf95d42defbca60",
         intel: "ce62c4390a54bd599a9a17a337809027b5557a87bc1ca34a569abfa1f1ff40b6"

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
