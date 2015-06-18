cask :v1 => 'oovoo' do
  version :latest
  sha256 :no_check

  url 'http://download.cdn.oovoo.com/download/ooVoo.dmg'
  name 'ooVoo'
  homepage 'http://www.oovoo.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Oovoo.app'
end
