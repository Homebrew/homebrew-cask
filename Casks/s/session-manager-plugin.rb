cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.694.0"
  sha256 arm:   "77d6c6d256f162c6af7bd9669aeaba576e6ba50ddef681a19ad229f7977e2936",
         intel: "0c3f669b0a9524755499a6a564a6fa4d27c6a2fad6ff9806af35e5ed04178ca4"

  url "https://session-manager-downloads.s3.amazonaws.com/plugin/#{version}/mac#{arch}/session-manager-plugin.pkg",
      verified: "session-manager-downloads.s3.amazonaws.com/plugin/"
  name "Session Manager Plugin for the AWS CLI"
  desc "Plugin for AWS CLI to start and end sessions that connect to managed instances"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"

  livecheck do
    url "https://docs.aws.amazon.com/systems-manager/latest/userguide/plugin-version-history.html"
    regex(%r{<td tabindex="-1">(\d+(?:\.\d+)+)</td>}i)
  end

  pkg "session-manager-plugin.pkg"
  binary "/usr/local/sessionmanagerplugin/bin/session-manager-plugin"

  uninstall pkgutil: "session-manager-plugin"

  zap trash: "/Library/LaunchDaemons/SessionManagerPlugin.plist"
end
