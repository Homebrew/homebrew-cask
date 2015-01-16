cask :v1 => 'biicode' do
  version '2.1.1'
  sha256 '16f2ecfb7695263bf690953abb003b95c6a94a05b1fd789c00fd5ddfe681665a'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
