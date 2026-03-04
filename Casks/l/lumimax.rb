cask "lumimax" do
  version "1.3.2"
  sha256 "6733d9e404122d265d4349a9af61f011629023ac830a8353e07464784a070511"

  url "https://github.com/Joowonoil/LumiMax/releases/download/v#{version}/LumiMax.dmg"
  name "LumiMax"
  desc "XDR brightness boost for Mac displays up to 1600 nits"
  homepage "https://ramterstudio.com/lumimax/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "LumiMax.app"

  uninstall quit: "com.ramster.LumiMax"

  zap trash: [
    "~/Library/Preferences/com.ramster.LumiMax.plist",
    "~/Library/Caches/com.ramster.LumiMax",
  ]
end
