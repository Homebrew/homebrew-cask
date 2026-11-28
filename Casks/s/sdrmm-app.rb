cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "13d68129f4573360d98706156825e47321f1b1710c51b3f633fd92c1d7ca8c4d",
         intel: "046f0dac09aaac7e3403d527699c09c3907ddccd2dbd42875c942d9fa14a9a74"

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
