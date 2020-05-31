cask 'marginnote' do
  version '3.6.10'
  sha256 '7e840da55ba1b656bce010a6fa28101b02a8925936ed3d890e0e06f070178db5'

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
