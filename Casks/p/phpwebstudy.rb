cask "phpwebstudy" do
  arch arm: "-arm64"

  version "4.3.1"
  sha256 arm:   "55f3439a285c21828b7ca2875a048802859593bb6238e56e189ec72e589ce41f",
         intel: "fbb10bbc591485f8e036bd669fc600b1fed65c870e408a5306e9acd3f62262b7"

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
