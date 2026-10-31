cask "sdrmm-app" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "a4afb7698b51a89743212baf33eafeccc8a47c8084bd299967409d1ee1d47c39",
         intel: "171348432ad4cf944f0ed88b778f84ee3d47c23548945fcd7cc13fead8416b1d"

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
