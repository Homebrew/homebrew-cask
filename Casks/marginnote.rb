cask 'marginnote' do
  version '3.1.4'
  sha256 '05cbea2a0d0b8fbf5940a1b3039d9f7610fa7156d85cbe5dc15fb46ae1f63588'

  # s3.amazonaws.com/marginnote-product/macapp was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/marginnote-product/macapp/MarginNote#{version.major}.dmg"
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
