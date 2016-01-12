cask 'iboostup' do
  version '5.1'
  sha256 '9260be9fe997c20603b301b2af71a07c5999d8418edddb7ded5a0612cea80b24'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          :sha256 => '18cb729386ed277372515a5c23e8157c0fb9122cf95bf2e9fd038e1ae334d76b'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'
  license :freemium

  app 'iBoostUp.app'
end
