cask "devtoys" do
  arch arm: "arm64", intel: "x64"

  version "2.0.3.0"
  sha256 arm:   "2549fe01c482a4b0c19f623d4ddef4283ca8148841ca066bc85f8eaeb950e995",
         intel: "061fefeeade8541a874cd743766dc503741e8ed1fcaf8cfa5a5ba8269350a375"

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
