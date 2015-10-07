cask :v1 => 'iboostup' do
  version :latest
  sha256 :no_check

  url 'https://www.iboostup.com/iboostup.dmg'
  name 'iBoostUp'
  appcast 'https://www.iboostup.com/updates',
          :sha256 => '05e07f84dc91782512bfb4bf0fb660000dc57421ae928a4adee0848ce8797906'
  homepage 'https://www.iboostup.com/'
  license :freemium

  app 'iBoostUp.app'
end
