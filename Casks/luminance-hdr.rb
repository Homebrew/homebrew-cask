cask :v1 => 'luminance-hdr' do
  version '2.4.0'
  sha256 '8b97a9bf902aba0249091a70637df5f6040cdc25f9522aaa25bbb73aa9e297b9'

  url "http://downloads.sourceforge.net/sourceforge/qtpfsgui/Luminance%20HDR%20#{version}-MacOSX-10.8.dmg"
  homepage 'http://qtpfsgui.sourceforge.net/'
  license :oss

  app "Luminance HDR #{version}.app"
end
