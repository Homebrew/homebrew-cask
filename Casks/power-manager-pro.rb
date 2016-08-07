cask 'power-manager-pro' do
  version '4.5.3'
  sha256 '9ba78659549e9750b05dd89b42ca4e5cc9ee5af0b564c9f0e80f392bcdb3d4d6'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: 'f85a40c960f6bb324e87ede66a5a742d38c3089fbaf753a5bab420aa72139ed6'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
