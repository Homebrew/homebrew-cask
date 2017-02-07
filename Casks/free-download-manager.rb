cask 'free-download-manager' do
  version '5.1.23'
  sha256 'a66b25b3271aeb4d0ab5ad5bba9ada775de966b1975057a039185b8695736fb6'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
