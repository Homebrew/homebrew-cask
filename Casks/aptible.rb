cask "aptible" do
  version "0.19.6,20220928212813,384"
  sha256 "b655a668c43daaff11339c2c55d2f2e9e7df25d0f656eb9e20b285da3bb6ce3d"

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
