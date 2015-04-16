cask :v1 => 'biicode' do
  version '3.0'
  sha256 'c6b6d9bfa35387bb1b7bc7da385ca0690ea5400c096a1a5d52da3f00fddf23b3'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  name 'Biicode'
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
