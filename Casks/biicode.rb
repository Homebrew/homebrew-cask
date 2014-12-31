cask :v1 => 'biicode' do
  version '2.0.1'
  sha256 '2bfcb38d4aa97d510ecf26cbb96330b84ce6093f74792d662dcfee29466ea12d'

  # amazonaws is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/biibinaries/release/#{version}/bii-macos-64_#{version.gsub('.', '_')}.pkg"
  homepage 'http://www.biicode.com'
  license :closed

  pkg "bii-macos-64_#{version.gsub('.', '_')}.pkg"

  uninstall :pkgutil => 'biicode'
end
