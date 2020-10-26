cask "aptible" do
  version "0.16.8,20201023194353,220"
  sha256 "2fb73ff153abdd761691826298452e0a4cd47f193235e5fb792a2226b116677d"

  # omnibus-aptible-toolbelt.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma.after_comma}/pkg/aptible-toolbelt-#{version.before_comma}%2B#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"
  name "Aptible Toolbelt"
  desc "Command-line tool for Aptible Deploy, an audit-ready App Deployment Platform"
  homepage "https://www.aptible.com/documentation/deploy/cli.html"

  depends_on formula: "libu2f-host"

  pkg "aptible-toolbelt-#{version.before_comma}+#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"
end
