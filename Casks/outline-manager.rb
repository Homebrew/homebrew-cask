cask 'outline-manager' do
  version '1.1.8'
  sha256 'e776d3c0472f7185b4ec4d45695ff2c70b89c6ea893efb9db362af4d15977c9d'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
