cask 'outline-manager' do
  version '1.1.3'
  sha256 '46e919cf6eb841120b53e76d2c8d8948f758ddfb1a6e00e755b93bdbdbb84e32'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
