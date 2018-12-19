cask 'power-manager-pro' do
  version '4.6.5'
  sha256 'c3e7123b9748616bba7925d429576176603eef23cd3fcbc0e4486ed681522c5f'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
