cask 'marginnote' do
  version '3.6.5'
  sha256 '28dde35eeb3f0127c29f2fbd8b76092a153b3521e70c8fff06afae274e15df88'

  # marginstudy.com was verified as official when first introduced to the cask
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
