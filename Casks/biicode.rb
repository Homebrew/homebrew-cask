cask :v1 => 'biicode' do
  version '2.6.3'
  sha256 '956c66b22d14fa4cfb4954b6d8215c9860cc799bc3e7722866c5f1186d5c2bd9'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
