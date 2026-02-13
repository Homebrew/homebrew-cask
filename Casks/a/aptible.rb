cask "aptible" do
  version "0.26.2,20260213192548,gh-70"
  sha256 "58b510041799ef43ffad7f52481f3983652a1906e0168230bed52b885a4e2a7a"

  url "https://omnibus-aptible-toolbelt.s3.amazonaws.com/aptible/omnibus-aptible-toolbelt/master/#{version.csv.third}/pkg/aptible-toolbelt-#{version.csv.first}%2B#{version.csv.second}-mac-os-x.10.15.7-1.pkg",
      verified: "omnibus-aptible-toolbelt.s3.amazonaws.com/"
  name "Aptible Toolbelt"
  desc "Command-line tool for Aptible Deploy, an audit-ready App Deployment Platform"
  homepage "https://www.aptible.com/docs/reference/aptible-cli/overview"

  livecheck do
    url :homepage
    regex(%r{href=.*?/((?:gh-)?\d+)/pkg/aptible-toolbelt[._-]v?(\d+(?:\.\d+)+)%2B(\d+)[._-]mac}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on formula: "libfido2"

  pkg "aptible-toolbelt-#{version.csv.first}+#{version.csv.second}-mac-os-x.10.15.7-1.pkg"

  uninstall pkgutil: "com.aptible.toolbelt"

  zap trash: "/usr/local/bin/aptible"
end
