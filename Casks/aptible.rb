cask "aptible" do
  version "0.18.3,20210702164907,243"
  sha256 "d81b9b3f26e030778b183b3f8c1b8e57798c7b15f422f030f0dcb01459699078"

  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.after_comma.after_comma}/pkg/aptible-toolbelt-#{version.before_comma}%2B#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg",
      verified: "omnibus-aptible-toolbelt.s3.amazonaws.com/"
  name "Aptible Toolbelt"
  desc "Command-line tool for Aptible Deploy, an audit-ready App Deployment Platform"
  homepage "https://www.aptible.com/documentation/deploy/cli.html"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{href=.*?/(\d+)/pkg/aptible-toolbelt[._-]v?(\d+(?:\.\d+)+)%2B(\d+)[._-]mac}i).map do |match|
        "#{match[1]},#{match[2]},#{match[0]}"
      end
    end
  end

  depends_on formula: "libu2f-host"

  pkg "aptible-toolbelt-#{version.before_comma}+#{version.after_comma.before_comma}-mac-os-x.10.11.6-1.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"
end
