cask 'aptible' do
  version '0.16.2,20190829193451,187'
  sha256 'c6a27837267bce5698d2581da7aa41cf76eac5005d01c5b6030dedbfff49799d'

  # omnibus-aptible-toolbelt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma.after_comma}/pkg/aptible-toolbelt-#{version.before_comma}%2B#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/documentation/deploy/cli.html'

  pkg "aptible-toolbelt-#{version.before_comma}+#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
