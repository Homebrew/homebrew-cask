cask 'outline-manager' do
  version '1.5.0'
  sha256 '84328bbb820aa9743d0c7cb5cc77242858315dd11ca7bade7f802c036e64d09f'

  # github.com/Jigsaw-Code/outline-server/ was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
