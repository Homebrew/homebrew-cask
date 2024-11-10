cask "devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.6.0"
  sha256 arm:   "feb60c02590c1d11e14c67af9e14d32f3a2d5a3bde53800841e3d801d64ec8f8",
         intel: "a5d3783608dbe8a01e2c08cd8e01ab684027bf2871de595a8c80668d147320e6"

  url "https://github.com/DevToys-app/DevToys/releases/download/v#{version}/devtoys_osx_#{arch}.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/DevToys-app/DevToys"

  depends_on macos: ">= :monterey"

  app "DevToys.app"

  zap trash: [
    "~/Library/Caches/com.devtoys",
    "~/Library/Caches/com.devtoys.preview",
    "~/Library/Preferences/com.devtoys.plist",
    "~/Library/Preferences/com.yuki.DevToys.plist",
    "~/Library/WebKit/com.devtoys",
    "~/Library/WebKit/com.devtoys.app",
  ]
end
