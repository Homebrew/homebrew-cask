cask "session-manager-plugin" do
  version "1.2.463.0"
  sha256 "bd490117147b2478791e7039e0aa7fe65a2368153375e62e23c43955162522a5"

  url "https://s3.amazonaws.com/session-manager-downloads/plugin/#{version}/mac/session-manager-plugin.pkg",
      verified: "s3.amazonaws.com/session-manager-downloads/"
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
end
