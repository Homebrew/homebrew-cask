cask 'power-manager-pro' do
  version '4.6.3'
  sha256 '5cf5f43e0738609db9c32b7a698e0f690977cf21b77ed2582fc720a44489e550'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: '70e25c35cc3d12a574a2ea40e94255a645549d79b0b7180910adf21419c2c25b'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
