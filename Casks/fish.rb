cask 'fish' do
  version '2.3.1'
  sha256 '0993fcb0b10b1d2609f0d4533836f43f66ae2cba2f59f279208f603cdf7fd770'

  url "http://fishshell.com/files/#{version}/fish-#{version}.pkg"
  name 'Fish Shell'
  homepage 'http://fishshell.com'
  license :gpl

  pkg 'fish.pkg'

  uninstall pkgutil: 'com.ridiculousfish.fish-shell-pkg'
end
