cask "osquery" do
  version "5.10.2"
  sha256 "a01d1f7da016f1e6bed54955e97982d491b7e55311433ff0fc985269160633af"

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
