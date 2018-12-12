cask 'marginnote' do
  version '3.1.9002'
  sha256 '3cdb46ac212f6a422c1004e7f101f392a3c5f26a14e9e37193a697f30aa745a1'

  # s3.amazonaws.com/marginnote-product/macapp was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/marginnote-product/macapp/MarginNote#{version.major}.dmg"
  appcast 'https://updates.devmate.com/QReader.MarginStudyMac.xml'
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
