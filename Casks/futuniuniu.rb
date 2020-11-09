cask "futuniuniu" do
  version "10.12.722_202010291731"
  sha256 "830e37ff8ccc4630d513ef3c6f219ceb37f5cd5462e0ac03845456074f51bb2e"

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
