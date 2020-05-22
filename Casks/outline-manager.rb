cask 'outline-manager' do
  version '1.5.3'
  sha256 'eafff5812e615ebc89e733b25cec88d2d81fb20c46daccd3e2fb06997cbfa17c'

  # github.com/Jigsaw-Code/outline-server/ was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
