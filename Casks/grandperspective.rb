cask :v1 => 'grandperspective' do
  version '1.5.1'
  sha256 '92204458042a337c1091879e167ea95e45cae33a7be16fa6c11e80572c54d135'

  url "https://downloads.sourceforge.net/project/grandperspectiv/grandperspective/#{version}/GrandPerspective-1_5_1.dmg"
  homepage 'http://grandperspectiv.sourceforge.net/'
  license :oss

  app 'GrandPerspective.app'
end
