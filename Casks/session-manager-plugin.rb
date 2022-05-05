cask "session-manager-plugin" do
  version "1.2.312.0"
  sha256 "d49ef3cc8ddf9650f5595ab3629f22229ac2d6380b4eb250ea35d5c118d3b985"

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
