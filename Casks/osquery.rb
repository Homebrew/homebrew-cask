cask "osquery" do
  version "4.5.1"
  sha256 "1d687b00c8e27f68e95c624bd1ade9b79311321c0ce905ee35860b2c4e825d56"

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url "https://github.com/osquery/osquery/releases"
    strategy :git
  end

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   "com.facebook.osquery"
end
