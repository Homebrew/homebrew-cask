cask 'outline-manager' do
  version '1.2.4'
  sha256 'ae9c97468e97dc57dfc4baaec6c7d09324d6db0de62723f8f31922cc7c7d4725'

  # github.com/Jigsaw-Code/outline-server/ was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
