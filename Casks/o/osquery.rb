cask "osquery" do
  version "5.17.0"
  sha256 "d087c88377e22eee9f0647df96d3dda4a82e73b78a48a24cf4d9d4eb021513d8"

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
