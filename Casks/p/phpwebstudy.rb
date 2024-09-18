cask "phpwebstudy" do
  arch arm: "-arm64"

  version "4.3.2"
  sha256 arm:   "2ca2d879c4a7c4240ced57532a542cfeb63562e4fd0d40719b150a860f3d3556",
         intel: "93b84da6bd2d2236964327e8d1131b6399668aeca5b172894f60e30f6d24d579"

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
