cask "osquery" do
  version "5.5.1"
  sha256 "e94f364c6d1e7eb9d25999588cfbf16ad013b214598f1307ade06a09d18f153d"

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url "https://github.com/osquery/osquery"
    strategy :github_latest
  end

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   [
              "com.facebook.osquery",
              "io.osquery.agent",
            ]
end
