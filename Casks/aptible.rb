cask 'aptible' do
  version '0.8.4+20170125122046'
  sha256 '6cb9763d0ac9369241a3fc390762916cd46434572182dd268c70dc7b4c082719'

  # omnibus-aptible-toolbelt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/132/pkg/aptible-toolbelt-#{version.sub('+', '%2B')}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/support/toolbelt/'

  pkg "aptible-toolbelt-#{version}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
