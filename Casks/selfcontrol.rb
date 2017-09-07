cask 'selfcontrol' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 'd3823a1e9ba0b47dc2cb39c93cd51837c2dafc7d5a5a564825f4a440fd2ab9ad'
  else
    version '2.2.1'
    sha256 'aee5d3f5d48c8e073aee1d5ad15feb966018c8b5f9a3ca217c30e87c934d8d74'
  end

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml',
          checkpoint: 'b61ac0ef34e3b92390b5c178293c2a72cc59d46040d43c99cc8ea084dcd99abd'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap delete: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
