cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.7.0"
  sha256 arm:   "f27e4be8b3cd35572ff8b2ecfa72eebb36e04013abbacacaf2b2107587be03f0",
         intel: "c002e4cc4f990c5cad51a19b6d47ff16312b65b670ae522812d590a7f5d1c251"

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
