cask 'marginnote' do
  version '3.6.9'
  sha256 'f33bbe98039ebcdc4285a89b9c622b774c09b954d54002a8e834f18df47d69a4'

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
