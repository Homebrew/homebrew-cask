cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.814.0"
  sha256 arm:   "7fa5a121af05c4429c5ed2853eb8c5eb8a94ba11cb42a7194728614e4db4726b",
         intel: "d8e34e460bfda92e421257123b310fef8827234086ec265dabe0c28cdb128443"

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
