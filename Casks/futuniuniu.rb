cask "futuniuniu" do
  version "10.8.686_202008121827"
  sha256 "8ad908afd405ca9225a82c067e4bf7b4454377591fee4b59481b37d549e44837"

  # software-file-1251001049.file.myqcloud.com/ was verified as official when first introduced to the cask
  url "https://software-file-1251001049.file.myqcloud.com/FTNNForMac_#{version}_Website.dmg"
  appcast "https://www.futu5.com/tools"
  name "FutuNiuniu"
  name "富途牛牛"
  homepage "https://hk.futu5.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app "FutuNiuniu.app", target: "富途牛牛.app"
end
