cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "a598030f7e9e865a8370bdcd4ad5ef986558311ef8c7b955a07b61f3c0201f96",
         intel: "9badcef737dd604d2a4e7531cd31368c588ad1cfa39edb4e3739bef71fa7121e"

  url "https://github.com/Newspicel/sdrmm/releases/download/v#{version}/SDR--_#{version}_#{arch}.dmg"
  name "SDR--"
  name "sdrmm"
  desc "Modular, client-server software-defined radio"
  homepage "https://github.com/Newspicel/sdrmm"

  auto_updates true
  depends_on :macos

  app "SDR--.app"

  zap trash: [
    "~/Library/Application Support/dev.newspicel.sdrmm",
    "~/Library/Caches/dev.newspicel.sdrmm",
    "~/Library/WebKit/dev.newspicel.sdrmm",
  ]
end
