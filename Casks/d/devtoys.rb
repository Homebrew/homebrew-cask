cask "devtoys" do
  arch arm: "arm64", intel: "x64"
  version "2.0.0.3"
  sha256 arm:   "70385adb55941d47b145c2e7622c7efb972bd04d3d3013846f06f174ecf1b1b6",
         intel: "66b5065c8a39e78bd4a0bad69f26faf892652cf8d95909b1ac2dfc5282301b40"

  url "https://github.com/DevToys-app/DevToys/releases/download/v#{version}/devtoys_osx_#{arch}.zip"
  name "DevToys"
  desc "Utilities designed to make common development tasks easier"
  homepage "https://github.com/DevToys-app/DevToys"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: [
    "~/Library/com.devtoys.preview",
    "~/Library/Preferences/com.devtoys.plist",
    "~/Library/Preferences/com.yuki.DevToys.plist"
    "~/Library/Caches/com.devtoys.preview",
    "~/Library/WebKit/come.devtoys.app",
  ]
end
