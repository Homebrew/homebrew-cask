cask 'free-download-manager' do
  version '5.1.25'
  sha256 '2cecfb18e98272bec8c0bc6974b53afdcdc4c08f9a25b912906762bfb05c0259'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
