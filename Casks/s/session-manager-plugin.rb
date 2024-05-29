cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.633.0"
  sha256 arm:   "e26d1ae39d576451e6c5cc06e1ced3a6219905b1213b2479819fe7230b139424",
         intel: "478e225121772def86266958c9630072debcaa325e51456ec25325cf59a17855"

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
