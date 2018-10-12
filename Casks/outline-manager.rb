cask 'outline-manager' do
  version '1.1.7'
  sha256 '4327ec0d57dbfe2a78044a6b69bd9a65af5675bc6591dcd8e1bfbfa5d8838509'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
