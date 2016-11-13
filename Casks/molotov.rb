cask 'molotov' do
  version '0.9.6'
  sha256 '5a0766725ac85507786a3027db48c9d361eb031933d8b464e85b68991e2128ae'

  url "http://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
