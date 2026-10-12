cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "20e1f80f43f5bfbf65361d838053b2f2378b4f6f491ae03c06518d733ab2a4c7",
         intel: "0f09f89bb310a2e8d215e23e1aa73e152bc95d032c82fe52211e398783d85832"

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
