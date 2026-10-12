cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "387c2556b468bc64826e8836a5421520db2cee940d56055f0734729118bafb5a",
         intel: "39a79cc2999b20bc0bfc4a0d01605fad1b1d87ab323a19edc2ee9ede28ffa3a7"

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
