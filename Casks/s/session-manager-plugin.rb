cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.835.0"
  sha256 arm:   "1392dde1e7c91c4e66996e8a8374c9be2a1907847cf96259311cf9c53fdff900",
         intel: "2e437c5a9ca54a600e11c1c8994d7e7a776ee16ea7c0bb26d0923882aceda4c4"

  url "https://session-manager-downloads.s3.amazonaws.com/plugin/#{version}/mac#{arch}/session-manager-plugin.pkg",
      verified: "session-manager-downloads.s3.amazonaws.com/plugin/"
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
