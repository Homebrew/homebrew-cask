cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "15bbadc049203871deb3e3b93182833cf06e8f477cb84dd009b3fed8e58f433a",
         intel: "c8046de326d9b18ab55436140321cd98450fadf20a45c905f59a94931b7b4168"

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
