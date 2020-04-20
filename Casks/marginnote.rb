cask 'marginnote' do
  version '3.6.6'
  sha256 'a63ba8abe75d9303aafb24cdfca5ced93d11f12af796a2b5d4e036eefcdb93ed'

  # marginstudy.com/ was verified as official when first introduced to the cask
  url "http://marginstudy.com/mac/MarginNote#{version.major}.dmg"
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/1451f4f6-9214-4d46-b91c-d5898c7e42cb'
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
