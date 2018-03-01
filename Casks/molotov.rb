cask 'molotov' do
  version '2.0.5'
  sha256 'ee37bc3724bacfeb7880af67865d5b446b03bd23856ee78a8e00f596cc4b58e9'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
