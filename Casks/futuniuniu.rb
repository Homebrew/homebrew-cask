cask "futuniuniu" do
  version "10.10.704_202009101801"
  sha256 "ef4cfaf4c43d8319aaa6c74199d718dc059672b83b75363880b10b833ca47513"

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
