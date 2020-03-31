cask 'prezi-next' do
  version '1.42.1'
  sha256 'cc1395584dd25e51c27d29a1ad2526cc769a76603d7b8357e7f1eed052691201'

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast 'https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml'
  name 'Prezi Next'
  homepage 'https://prezi.com/'

  app 'Prezi Next.app'
end
