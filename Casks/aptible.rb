cask "aptible" do
  version "0.18.2,20210609231132,241"
  sha256 "15e62498e122ee4da5ac71d2774ced177e41e0bdaec8e3a4ba5861fd1b895a89"

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
