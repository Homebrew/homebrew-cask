cask 'prezi-next' do
  version '1.42.0'
  sha256 'd374a45d31bb11a6883040c674f5abdc196996242f54f6f6249677b0b067ae84'

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast 'https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml'
  name 'Prezi Next'
  homepage 'https://prezi.com/'

  app 'Prezi Next.app'
end
