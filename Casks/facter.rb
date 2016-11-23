cask 'facter' do
  version '2.4.6'
  sha256 'b90ee538e36c0a9838de60bb78dd132fd60971a71228d222d5106f8f84332817'

  # downloads.puppetlabs.com/mac/ was verified as official when first introduced to the cask
  url "https://downloads.puppetlabs.com/mac/facter-#{version}.dmg"
  name 'Facter'
  homepage 'https://puppet.com/product/open-source-projects'

  pkg "facter-#{version}.pkg"

  uninstall pkgutil: 'com.puppetlabs.facter'
end
