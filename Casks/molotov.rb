cask 'molotov' do
  version '4.0.0'
  sha256 '7de54b9810573e9145531fe0f4547c7a713305f0f9ac02493ecd117365412275'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
