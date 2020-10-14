cask "futuniuniu" do
  version "10.11.712_202010121658"
  sha256 "1c0ed429c9158a4433cb88368c3715db57c0c7a3c9cc28229f784d5edb301334"

  # software-file-1251001049.file.myqcloud.com/ was verified as official when first introduced to the cask
  url "https://software-file-1251001049.file.myqcloud.com/FTNNForMac_#{version}_Website.dmg"
  appcast "https://www.futu5.com/tools"
  name "FutuNiuniu"
  name "富途牛牛"
  desc "Trading application"
  homepage "https://hk.futu5.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app "FutuNiuniu.app", target: "富途牛牛.app"
end
