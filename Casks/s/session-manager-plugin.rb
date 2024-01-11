cask "session-manager-plugin" do
  arch arm: "_arm64"

  version "1.2.553.0"
  sha256 arm:   "b3629c359ba426bf53da284f60f41f0de6436a1ff5abac0772843bb39b5eb90e",
         intel: "dea9b460d60ae4528949981900a8bf96c4e04cca7b042e27449a6562f2eacec3"

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
