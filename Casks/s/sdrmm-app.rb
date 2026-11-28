cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "2662a95290e34c7090c3a09aa9bbd152c16c4752275d75a532ff5083a480e96e",
         intel: "a642485a5786772666c5756f8326fa2e0518dbceae79dde685c5c2e43b97cc05"

  url "https://github.com/Newspicel/sdrmm/releases/download/v#{version}/SDRmm_#{version}_#{arch}.dmg"
  name "SDR--"
  name "sdrmm"
  desc "Modular, client-server software-defined radio"
  homepage "https://github.com/Newspicel/sdrmm"

  auto_updates true
  depends_on macos: :monterey

  app "SDRmm.app"

  zap trash: [
    "~/Library/Application Support/dev.newspicel.sdrmm",
    "~/Library/Caches/dev.newspicel.sdrmm",
    "~/Library/WebKit/dev.newspicel.sdrmm",
  ]
end
