cask "osquery" do
  version "5.14.1"
  sha256 "082d1c621fc582f037546a8df028017062fadd47ce4af3a0702c93a2622241cb"

  url "https://github.com/osquery/osquery/releases/download/#{version}/osquery-#{version}.pkg",
      verified: "github.com/osquery/osquery/"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   [
              "com.facebook.osquery",
              "io.osquery.agent",
            ]

  # No zap stanza required
end
