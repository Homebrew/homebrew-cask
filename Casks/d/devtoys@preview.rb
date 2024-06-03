cask "devtoys@preview" do
  version "v2.0.0.3"
  sha256 "70385adb55941d47b145c2e7622c7efb972bd04d3d3013846f06f174ecf1b1b6"

  url "https://github.com/DevToys-app/DevToys/releases/download/#{version}/devtoys_osx_arm64.zip"
  name "DevToys"
  desc "A Swiss Army Knife for developers"
  homepage "https://github.com/DevToys-app/DevToys"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: [
    "~/Library/com.devtoys.preview",
    "~/Library/Preferences/com.devtoys.plist",
    "~/Library/Caches/com.devtoys.preview",
    "~/Library/WebKit/come.devtoys.app",
  ]
end
