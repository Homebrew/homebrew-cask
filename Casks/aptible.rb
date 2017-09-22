cask 'aptible' do
  version '0.12.0+20170921181235,151'
  sha256 'fafd7499c6fba9ce44740c1a9aa3fdf328011cd4d8d56421be215cdf8b3264b2'

  # omnibus-aptible-toolbelt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma}/pkg/aptible-toolbelt-#{version.before_comma.sub('+', '%2B')}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/support/toolbelt/'

  pkg "aptible-toolbelt-#{version.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
