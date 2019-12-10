cask 'aptible' do
  version '0.16.3,20191024182313,194'
  sha256 '3bb96ba7cc99842988f041075eadf203a949ad211bb83d10d073fc3647715e95'

  # omnibus-aptible-toolbelt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma.after_comma}/pkg/aptible-toolbelt-#{version.before_comma}%2B#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"
  name 'Aptible Toolbelt'
  homepage 'https://www.aptible.com/documentation/deploy/cli.html'

  pkg "aptible-toolbelt-#{version.before_comma}+#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: 'com.aptible.toolbelt'
end
