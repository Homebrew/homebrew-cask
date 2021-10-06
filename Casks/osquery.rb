cask "osquery" do
  version "5.0.1"
  sha256 "ec58996e64637d861ccead8dc6bc8865662728f6e5bc2694a3c92f0f4a371095"

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
