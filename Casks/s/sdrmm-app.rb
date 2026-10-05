cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "a07fc6d870f4ac949751af9bc7f3033ffbe15c83b1e7791a5f1f3198764264b3",
         intel: "c97807d3855e4c2afd160729de1c443d21634a3970fbd5495eab769192de4fa0"

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
