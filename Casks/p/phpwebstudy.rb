cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.47"
  sha256 arm:   "bc4ed5c868881b4c6801cdeccbde6e379f5cc29f0abc901c940287c26701f116",
         intel: "774c599d2d7dffbb2fb9464d628ee85eebaa430d1f1e2764736e2cbe9a1b6098"

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
