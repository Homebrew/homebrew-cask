cask 'facter' do
  version '2.4.6'
  sha256 'b90ee538e36c0a9838de60bb78dd132fd60971a71228d222d5106f8f84332817'

  url "https://downloads.puppetlabs.com/mac/facter-#{version}.dmg"
  name 'Facter'
  homepage 'https://puppetlabs.com/facter'

  pkg "facter-#{version}.pkg"

  uninstall pkgutil: 'com.puppetlabs.facter'
end
