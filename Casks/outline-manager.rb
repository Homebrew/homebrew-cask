cask 'outline-manager' do
  version '1.0.4'
  sha256 '2394fd17e730a9f2c131fac8ae1e2635d00cd70943f7a6c384d1dd3e19d1efa9'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom',
          checkpoint: '1bf06af79dc83c160c1c8f79dfe6718502ea2a5c2ed1337873ad8d2dd76f8f11'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
