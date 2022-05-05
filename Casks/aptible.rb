cask "aptible" do
  version "0.19.3,20220324183731,340"
  sha256 "4ecbe4b716ec6f725338164159da2d8acbe964e603085f1f6919a3bb0a74e76c"

  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.csv.third}/pkg/aptible-toolbelt-#{version.csv.first}%2B#{version.csv.second}-mac-os-x.10.15.7-1.pkg",
      verified: "omnibus-aptible-toolbelt.s3.amazonaws.com/"
  name "Aptible Toolbelt"
  desc "Command-line tool for Aptible Deploy, an audit-ready App Deployment Platform"
  homepage "https://www.aptible.com/documentation/deploy/cli.html"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/pkg/aptible-toolbelt[._-]v?(\d+(?:\.\d+)+)%2B(\d+)[._-]mac}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
    end
  end

  depends_on formula: "libfido2"

  pkg "aptible-toolbelt-#{version.csv.first}+#{version.csv.second}-mac-os-x.10.15.7-1.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"
end
