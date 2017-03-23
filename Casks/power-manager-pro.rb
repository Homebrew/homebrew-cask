cask 'power-manager-pro' do
  version '4.6.0'
  sha256 'e9a92a033d42a950f0c7419b61351d0e92771b99dd71f048796a0d41ad7627a5'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: 'aa747f55b0d2c75b91e2893997bfbe457920256b211030bc0c1a7dc2e5d06706'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
