cask "aptible" do
  version "0.18.1,20210607165408,239"
  sha256 "07c089282fe7f257eb829fa32c92c364b6ff28f89e6fb28b0f7195643fe961a6"

  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma.after_comma}/pkg/aptible-toolbelt-#{version.before_comma}%2B#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg",
      verified: "omnibus-aptible-toolbelt.s3.amazonaws.com/"
  name "Aptible Toolbelt"
  desc "Command-line tool for Aptible Deploy, an audit-ready App Deployment Platform"
  homepage "https://www.aptible.com/documentation/deploy/cli.html"

  depends_on formula: "libu2f-host"

  pkg "aptible-toolbelt-#{version.before_comma}+#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"
end
