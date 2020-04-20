cask 'marginnote' do
  version '3.6.7'
  sha256 '6495892ed0d10aa02fa7dde830aa6a1759158ee4386dd77c3ec486238972e97c'

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
