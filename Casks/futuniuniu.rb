cask "futuniuniu" do
  version "10.10.702_202008271309"
  sha256 "d6593178c90bfc9fa76b376e5f1d650c179b7b4c2c61c84085b268b542423a3b"

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
