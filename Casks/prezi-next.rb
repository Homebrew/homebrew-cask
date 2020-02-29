cask 'prezi-next' do
  version '1.41.1'
  sha256 '297c37566a259f39ed9a2347892e36fa5252fbd248d3b9fb94f536711868a6bf'

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast 'https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml'
  name 'Prezi Next'
  homepage 'https://prezi.com/'

  app 'Prezi Next.app'
end
