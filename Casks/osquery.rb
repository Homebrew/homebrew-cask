cask "osquery" do
  version "4.9.0"
  sha256 "3f9ab772596f4da69687a2d7db9a382535b5eabf2346abd452b24666b8f25102"

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url "https://github.com/osquery/osquery"
    strategy :git
  end

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   "com.facebook.osquery"
end
