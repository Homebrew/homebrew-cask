cask 'power-manager' do
  version '4.6.1'
  sha256 '731631da2b78cfd1ac757d0c82c985e298bfc13e4af73ed2ed6cf081dbf0dc05'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: 'e69753a257ffd273b4f60b565e0b01fbd7a0f0a6d1f0b8cd52b2790ee6419c20'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
