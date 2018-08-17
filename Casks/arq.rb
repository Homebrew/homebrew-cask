cask 'arq' do
  version '5.13.1'
  sha256 '7e60b44340dda4c53f11c6f310dcab67d5a2871a5e7acba207984950decb7ac0'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'
end
