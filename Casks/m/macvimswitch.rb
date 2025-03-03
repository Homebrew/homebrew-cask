cask "macvimswitch" do
  version "0.6.4"
  sha256 "728da4d886c9364b3e4c44278a6725b65f65071a838b84f8ee9c2b588b5b04f3"

  url "https://github.com/Jackiexiao/macvimswitch/releases/download/v#{version}/MacVimSwitch.dmg"
  name "MacVimSwitch"
  desc "Input Source switcher for vim user"
  homepage "https://github.com/Jackiexiao/macvimswitch/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "MacVimSwitch.app"

  zap trash: "~/Library/Preferences/com.jackiexiao.macvimswitch.plist"
end
