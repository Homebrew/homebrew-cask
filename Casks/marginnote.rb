cask 'marginnote' do
  version '3.6.13'
  sha256 'a64b89b5cc27204f067a67b3217e71ea4e038de956ddbed1a81dd95fb98457e2'

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
