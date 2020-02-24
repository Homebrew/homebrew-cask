cask 'outline-manager' do
  version '1.3.1'
  sha256 '68be00fe803fcfe54da10239a0b79a521ae40b4297c3040abf80bc3cbad34c20'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
