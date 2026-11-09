cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.896.0"
  sha256 arm:   "b95139a76cb473654d92185c200ac65205244b20f96aeb240b53837ba4973084",
         intel: "d9d960f04acb5ba419e0a12f769f9af4f3263e098b9b63e2de659189c138341a"

  url "https://session-manager-downloads.s3.amazonaws.com/plugin/#{version}/mac#{arch}/session-manager-plugin.pkg"
  name "Session Manager Plugin for the AWS CLI"
  desc "Plugin for AWS CLI to start and end sessions that connect to managed instances"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"

  livecheck do
    url "https://docs.aws.amazon.com/systems-manager/latest/userguide/plugin-version-history.html"
    regex(%r{<td tabindex="-1">(\d+(?:\.\d+)+)</td>}i)
  end

  depends_on :macos

  pkg "session-manager-plugin.pkg"
  binary "/usr/local/sessionmanagerplugin/bin/session-manager-plugin"

  uninstall pkgutil: "session-manager-plugin"

  zap trash: "/Library/LaunchDaemons/SessionManagerPlugin.plist"
end
