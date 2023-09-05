cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.497.0"
  sha256 arm:   "fbb417fecae01d743512124ada5889976fe35bd60018e8f80ff6270fd87fd3b8",
         intel: "1a50331e0befa175d8e1f96ff5558c49a755a1384537722657c60b0efa56b1b4"

  url "https://s3.amazonaws.com/session-manager-downloads/plugin/#{version}/mac#{arch}/session-manager-plugin.pkg",
      verified: "s3.amazonaws.com/session-manager-downloads/plugin/"
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
