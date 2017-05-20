cask 'free-download-manager' do
  version '5.1.28'
  sha256 'c92674e88a741cec39a77d1ae03ce6cee017e065b13dc920b9d73549a2462305'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
