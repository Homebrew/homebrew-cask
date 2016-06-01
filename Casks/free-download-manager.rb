cask 'free-download-manager' do
  version '5.1'
  sha256 '99adbb76e7fded28e4ffdb82b3dc5a26d82aad0fec326c8f8164963d7c461bfd'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'
  license :gratis

  app 'Free Download Manager.app'
end
