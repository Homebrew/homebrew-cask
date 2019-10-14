cask 'pomotroid' do
  version '0.6.2'
  sha256 '31fe5e68a8bfd830b4a3f252ed201bf38e0b0cd292e346074577a775c070698c'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/Pomotroid-#{version}.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
