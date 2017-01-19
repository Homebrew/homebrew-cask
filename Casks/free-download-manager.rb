cask 'free-download-manager' do
  version '5.1.22'
  sha256 '094cfc3120b014e51049f2ac8e251767c2e4cb447529e1e67922ba007531f2fb'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
