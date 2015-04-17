cask :v1 => 'djview' do
  version '4.10.2'
  sha256 '71023ad00941f7d3a01f273db4dc2e5c9c12b621954d877b9fe34a9ecf4bf149'

  url "https://downloads.sourceforge.net/sourceforge/djvu/DjVuLibre-3.5.27.1%2BDjView-#{version}-intel64.dmg"
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'
  license :gpl

  app 'DjView.app'
end
