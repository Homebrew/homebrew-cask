cask 'marginnote' do
  version '3.1.6'
  sha256 '057475204ac179bc07fd186aefb69e923336c490aceec1cf77f2f5e997701019'

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
