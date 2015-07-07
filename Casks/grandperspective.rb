cask :v1 => 'grandperspective' do
  version '1.5.1'
  sha256 '92204458042a337c1091879e167ea95e45cae33a7be16fa6c11e80572c54d135'

  url "http://downloads.sourceforge.net/project/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.gsub('.','_')}.dmg"
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'
  license :gpl

  app 'GrandPerspective.app'

  zap :delete => '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
