cask "phpwebstudy" do
  arch arm: "-arm64"

  version "2.2.2"
  sha256 arm:   "32340874c605b543f4bd89788c0fcd4462059d682a1a2d37804c26a066b39764",
         intel: "c40a367636525963ab04370142c005aadae900d194e7c74bdaf6de2e7e4ffb07"

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
