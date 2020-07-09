cask 'prezi-next' do
  version '1.45.0'
  sha256 'fbd2fd5e2dad77b4d9f51280024fd55a9197b8d8ad6620a7cf3a0076db3688e5'

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast 'https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml'
  name 'Prezi Next'
  homepage 'https://prezi.com/'

  app 'Prezi Next.app'
end
