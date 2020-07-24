cask 'ibored' do
  version '1.2'
  sha256 'e85fbcc99f4920ed36e9f2f0b1c1bd55448eb2544c88888c64200d0786e88972'

  url "https://files.tempel.org/iBored/iBored-Mac_#{version}.zip"
  appcast 'https://apps.tempel.org/iBored/releasenotes.html'
  name 'iBored'
  homepage 'https://apps.tempel.org/iBored/'

  app 'iBored.app'
end
