cask 'inky' do
  version '0.10.0b'
  sha256 '5c790eda5f2335372a4d92551ad9915bc1eb0b2daad4cb5259b3b289adb50398'

  # github.com/inkle/inky was verified as official when first introduced to the cask
  url "https://github.com/inkle/inky/releases/download/#{version}/Inky_mac.dmg"
  appcast 'https://github.com/inkle/inky/releases.atom'
  name 'Inky'
  homepage 'https://www.inklestudios.com/ink/'

  app 'Inky.app'
end
