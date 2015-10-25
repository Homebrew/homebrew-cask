cask :v1 => 'oovoo' do
  version :latest
  sha256 :no_check

  url 'http://download.cdn.oovoo.com/download/ooVoo.dmg'
  name 'ooVoo'
  homepage 'http://www.oovoo.com'
  license :gratis

  app 'Oovoo.app'
end
