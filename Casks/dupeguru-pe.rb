cask :v1 => 'dupeguru-pe' do
  version '2.10.0'
  sha256 '7de4375058952b59badb91fb5827f09ef9c71e25f41cff8d386f0c1d3c81534c'

  url "http://download.hardcoded.net/dupeguru_pe_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/dupeguru_pe/'
  license :unknown

  app 'dupeGuru PE.app'
end
