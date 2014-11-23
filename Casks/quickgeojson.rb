cask :v1 => 'quickgeojson' do
  version '1.0'
  sha256 '7f4cd78619e2ea12f4afcba017f08d72468dc1c9268f2b2ed6f1690bd4e3fa86'

  url 'https://github.com/irees/quickgeojson/releases/download/1.0/quickgeojson.qlgenerator.zip'
  homepage 'https://github.com/irees/quickgeojson'
  license :bsd

  qlplugin 'quickgeojson.qlgenerator'
end
