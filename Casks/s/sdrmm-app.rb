cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "aad527b649480c35f253829065cd6346a57d9ac90e264dbfe814a450d86f6854",
         intel: "7c263527dd9052623968cf72031891aae3de58e41842d6939306fd78903ae1cb"

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
