cask :v1 => 'djview' do
  version '4.5'
  sha256 'eec2efee86136725ae0a7164f80e2cea428c647fe987e3b6843b81280c7c7664'

  url "https://downloads.sourceforge.net/sourceforge/djvu/djvulibre-3.5.22%2Bdjview-#{version}-intel-3.zip"
  homepage 'http://djvu.sourceforge.net/'
  license :oss

  container :nested => "djvulibre-3.5.22+djview-#{version}-intel.dmg"
  app 'DjView.app'
end
