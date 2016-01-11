cask 'iboostup' do
  version '5.1'
  sha256 '9260be9fe997c20603b301b2af71a07c5999d8418edddb7ded5a0612cea80b24'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          :sha256 => '77f250b304b5c6994e4b4c977eef0e819efc2f496e63fc9a0938336d6296d59c'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'
  license :freemium

  app 'iBoostUp.app'
end
