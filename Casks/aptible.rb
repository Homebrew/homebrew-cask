cask "aptible" do
  version "0.16.7,20200812001716,217"
  sha256 "e186135254a7257e6f661b5520f5e2058ae8ed6b3574b81532a1a67d3f82ce0b"

  # omnibus-aptible-toolbelt.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma.after_comma}/pkg/aptible-toolbelt-#{version.before_comma}%2B#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"
  name "Aptible Toolbelt"
  homepage "https://www.aptible.com/documentation/deploy/cli.html"

  depends_on formula: "libu2f-host"

  pkg "aptible-toolbelt-#{version.before_comma}+#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"
end
