cask 'outline-manager' do
  version '1.1.5'
  sha256 '90c93e5b5b680da1fb98987f7b921921ba84cc1d1c715a13ccf543d137e65b56'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
