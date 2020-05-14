cask 'outline-manager' do
  version '1.5.2'
  sha256 '9787908b951d74724c1a89dc72a106b5f9ddbc00ab257f1303b8c699687e4d50'

  # github.com/Jigsaw-Code/outline-server/ was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
