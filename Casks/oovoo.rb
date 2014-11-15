cask :v1 => 'oovoo' do
  version :latest
  sha256 :no_check

  url 'http://download.cdn.oovoo.com/download/ooVoo.dmg'
  homepage 'http://www.oovoo.com'
  license :unknown

  app 'Oovoo.app'
end
