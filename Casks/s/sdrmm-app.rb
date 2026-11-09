cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "0c6772ad1bdc1e0b70a41c8cbe40ed4d5f8b3259edae6b8aedfa08e5a54549b0",
         intel: "ca5e2d879f0d30d5bd6cd047e43a4b8fd6d474e2ff290fd295dac42739f051c8"

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
