cask 'power-manager-pro' do
  version '4.5.4'
  sha256 'd69879539d2af1f9cd78dc4b3297ed2d7722eccf4237fdc9f65922a11c11828f'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: '1a8584ecd6238e6fdc7e152eb979ac94bb34d3a5583e4eec9957af7394b14d39'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
