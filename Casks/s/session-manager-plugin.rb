cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.536.0"
  sha256 arm:   "eafcbbf8b0e5f30c80fcf593ad6a6d96b2f755748e1e3af82ee2908fe327cd35",
         intel: "5e1d65085d80df3d09194ed4ed2f118f472e3f0fe30b03061b63ba7140df87f0"

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
