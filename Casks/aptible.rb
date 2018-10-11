cask 'aptible' do
  version '0.16.1+20180730142201,176'
  sha256 'b9bc547ffdc1ce6551d0d79690ab7d4192ad4abe831a7ce4aa9a8236feeba7da'

  # omnibus-aptible-toolbelt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma}/pkg/aptible-toolbelt-#{version.before_comma.sub('+', '%2B')}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/support/toolbelt/'

  pkg "aptible-toolbelt-#{version.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
