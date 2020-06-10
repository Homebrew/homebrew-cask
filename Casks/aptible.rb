cask 'aptible' do
  version '0.16.5,20200508143959,206'
  sha256 '7d3fc6d0a56ae25dd913e72930ac6c8ada6a5629e03771be6761b2fa03f60103'

  # omnibus-aptible-toolbelt.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma.after_comma}/pkg/aptible-toolbelt-#{version.before_comma}%2B#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/documentation/deploy/cli.html'

  pkg "aptible-toolbelt-#{version.before_comma}+#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
