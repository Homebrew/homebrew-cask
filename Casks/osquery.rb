cask "osquery" do
  version "4.5.0"
  sha256 "569dcf91d2cd1a822b4d9c151bacb04d629d108b328d345200cc865b81133492"

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  appcast "https://github.com/osquery/osquery/releases.atom"
  name "osquery"
  homepage "https://osquery.io/"

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   "com.facebook.osquery"
end
