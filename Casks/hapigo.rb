cask "hapigo" do
  version "2.5.1"
  sha256 "6393038f16c30e00ac6f033787a261510b56f76e0bb4d32ae38fa08cd837047f"

  url "https://github.com/HapiGo/HapiGo/releases/download/#{version}/HapiGo.dmg"
      verified: "github.com/HapiGo/HapiGo/"
  name "HapiGo"
  desc "脑力工作者必备工具"
  homepage "https://www.hapigo.com/"

  app "HapiGo.app"

  zap trash: [
    "~/Library/Application Support/Hapigo",
    "~/Library/Caches/Hapigo",
    "~/Library/Caches/com.hapigo",
    "~/Library/Preferences/com.xunyong.hapigo.plist",
  ]
end
