cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.33"
  sha256 arm:   "62f4c91de1655b333623fc018b9ebb7c1ad453827f831372be89264993118016",
         intel: "7723a0ae99f5e966107eccc5ca8b5556b77827b82bf337585968592e7bb1f1d7"

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
