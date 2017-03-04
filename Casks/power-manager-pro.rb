cask 'power-manager-pro' do
  version '4.5.6'
  sha256 '907c7394b9c2c26fc99077d6763b69df5162fd312e31e381d116dbf6757d8d3f'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: '0f66051904c604fdea88e35dd0dea93bf3a6f3d935d90e3acd7e8e499419fe35'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
