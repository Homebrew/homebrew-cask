cask 'outline-manager' do
  version '1.3.0'
  sha256 'f4263bc1c3ff82cfb2edbc0ed0d77fb6017c0299463dd1be2a0ea833091ca19c'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
