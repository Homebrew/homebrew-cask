cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.650.0"
  sha256 arm:   "dba8caccf8cb3a975853e2bb3d97225d034fcdfc82a36c1aa3733a80ca98d029",
         intel: "15f1ee084f663195e80fecb308b09a3d8e0163d65791a7af8721886e78f55361"

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
