cask 'free-download-manager' do
  version '5.1.20'
  sha256 '83c38d69adf3174025a7e5d764df0137160325ed0c108e2c36abdeb06be2c2ed'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
