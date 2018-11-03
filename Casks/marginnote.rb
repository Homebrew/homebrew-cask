cask 'marginnote' do
  version '3.1.5'
  sha256 '39c9418cfa5dec63c4e244a59c8c35a881b60f9c5e260315103e83531ccf13f8'

  # s3.amazonaws.com/marginnote-product/macapp was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/marginnote-product/macapp/MarginNote#{version.major}.dmg"
  appcast 'https://updates.devmate.com/QReader.MarginStudyMac.xml'
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
