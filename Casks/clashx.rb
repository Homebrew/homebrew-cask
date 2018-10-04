cask 'clashx' do
  version '1.5.4'
  sha256 '00fabcc34e8cd70c720bace322fa2e10560280433eeb8cc650f36303372ed574'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/raw/master/appcast.xml'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  app 'ClashX.app'
end
