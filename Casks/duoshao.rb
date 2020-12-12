cask "duoshao" do
  version "0.1.7"
  sha256 "a34416bbe04834868a267683c16101c2999949d56b4ee7cc30958e6667e1c382"

  # haokuai.cdn.tinyservices.net/duoshao/ was verified as official when first introduced to the cask
  url "https://haokuai.cdn.tinyservices.net/duoshao/Duoshao-#{version}.dmg"
  appcast "https://electron-releases-1259797650.cos.ap-nanjing.myqcloud.com/duoshao/latest-mac.yml"
  name "duoshao"
  desc "Collaborative accounting with double-entry bookkeeping"
  homepage "https://duoshao.net/"

  app "多少记账.app"
end
