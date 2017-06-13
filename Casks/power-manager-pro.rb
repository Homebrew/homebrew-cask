cask 'power-manager-pro' do
  version '4.6.1'
  sha256 '545b7a7d2d972f94a6500c7b348a83ccf512747291ce251272f3a0ccacdaaab6'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: 'b138f770ff3a1c3d9e5506c69e5e0d5f44badfc0b4a939599458bdb31bf6f503'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
