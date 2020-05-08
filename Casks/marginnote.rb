cask 'marginnote' do
  version '3.6.8'
  sha256 '689bfed0228fe0782a831e9530303b890fcaa645c01ae245eb73e36990d5925b'

  # marginstudy.com/ was verified as official when first introduced to the cask
  url "https://marginstudy.com/mac/MarginNote#{version.major}.dmg"
  appcast "https://dist.marginnote.cn/marginnote#{version.major}.xml"
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
