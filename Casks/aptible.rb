cask 'aptible' do
  version '0.14.0+20171010141911,155'
  sha256 '64e5026a673aa749c9c7fc363e7f8ab92f8fbea231cd66cec230c9eeb59eab55'

  # omnibus-aptible-toolbelt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma}/pkg/aptible-toolbelt-#{version.before_comma.sub('+', '%2B')}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/support/toolbelt/'

  pkg "aptible-toolbelt-#{version.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
