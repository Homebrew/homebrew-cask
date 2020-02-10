cask 'prezi-next' do
  version '1.40.0'
  sha256 '3ad61662a6db86fee8adec634f3f0884650394d5b5169327a90d0dbf31a6b4e3'

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast 'https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml'
  name 'Prezi Next'
  homepage 'https://prezi.com/'

  app 'Prezi Next.app'
end
