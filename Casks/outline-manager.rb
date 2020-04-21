cask 'outline-manager' do
  version '1.4.0'
  sha256 'ad775993051c8f1476dab8282fc4aabb8e730481cb0cf280c72be22f269c931b'

  # github.com/Jigsaw-Code/outline-server/ was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
