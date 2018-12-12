cask 'marginnote' do
  version '3.1.10'
  sha256 'de63c95a23f8112ce34b1a4ca30bb422e4cce0d0c655f6c8d4d3de758030716c'

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
