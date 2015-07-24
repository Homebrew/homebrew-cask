cask :v1 => 'seashore' do
  version :latest
  sha256 :no_check

  url 'http://downloads.sourceforge.net/sourceforge/seashore/Seashore.zip'
  name 'Seashore'
  homepage 'http://seashore.sourceforge.net/'
  license :gpl

  app 'Seashore.app'
end
