cask 'aptible' do
  version '0.10.0+20170516175454,141'
  sha256 'd349560c9d42c64e0e5630f6f532a2d34b77d31db7bac78d8a9aed9cfa79d081'

  # omnibus-aptible-toolbelt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma}/pkg/aptible-toolbelt-#{version.before_comma.sub('+', '%2B')}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/support/toolbelt/'

  pkg "aptible-toolbelt-#{version.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
