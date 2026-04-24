cask "osquery" do
  version "5.22.1"
  sha256 "63118ae94aa4292c7b302a69a121e197d120eafcfcb186fd3ebeccb1b0c06129"

  url "https://github.com/osquery/osquery/releases/download/#{version}/osquery-#{version}.pkg",
      verified: "github.com/osquery/osquery/"
  name "osquery"
  desc "SQL powered operating system instrumentation and analytics"
  homepage "https://osquery.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "osquery-#{version}.pkg"

  uninstall launchctl: "com.facebook.osqueryd",
            pkgutil:   [
              "com.facebook.osquery",
              "io.osquery.agent",
            ]

  # No zap stanza required
end
