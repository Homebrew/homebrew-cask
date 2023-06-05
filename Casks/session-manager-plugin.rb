cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.463.0"
  sha256 arm:   "9cb4f1050e19983768b73977a8568bf548f2f747dab8fc5682e5c5873f8a8f7f",
         intel: "bd490117147b2478791e7039e0aa7fe65a2368153375e62e23c43955162522a5"

  url "https://s3.amazonaws.com/session-manager-downloads/plugin/#{version}/mac#{arch}/session-manager-plugin.pkg",
      verified: "s3.amazonaws.com/session-manager-downloads/plugin/"
  name "Session Manager Plugin for the AWS CLI"
  desc "Plugin for AWS CLI to start and end sessions that connect to managed instances"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"

  livecheck do
    url :homepage
    regex(%r{<td>\s*v?(\d+(?:\.\d+)+)\s*</td>}i)
  end

  pkg "session-manager-plugin.pkg"
  binary "/usr/local/sessionmanagerplugin/bin/session-manager-plugin"

  uninstall pkgutil: "session-manager-plugin"

  zap trash: "/Library/LaunchDaemons/SessionManagerPlugin.plist"
end
