cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.2"
  sha256 arm:   "fcaef882b7b114d6c5b85c386da90ffc073a4754a9d4220d60ef19f80ee25a7c",
         intel: "811d8d6a65f6e8098c69e3ff0dc4babee5962f8aa4eeed7e485b4154999054fd"

  url "https://github.com/Newspicel/sdrmm/releases/download/v#{version}/SDRmm_#{version}_#{arch}.dmg"
  name "SDR--"
  name "sdrmm"
  desc "Modular, client-server software-defined radio"
  homepage "https://github.com/Newspicel/sdrmm"

  auto_updates true
  depends_on :macos

  app "SDRmm.app"

  zap trash: [
    "~/Library/Application Support/dev.newspicel.sdrmm",
    "~/Library/Caches/dev.newspicel.sdrmm",
    "~/Library/WebKit/dev.newspicel.sdrmm",
  ]
end
