cask "aws-vpn-client" do
  version "1.4.0"
  sha256 "594ade5053f6b35ea044adfe1a74b2b706a46bf2d976670d670d3b4e207c954e"

  url "https://d20adtppz83p9s.cloudfront.net/OSX/#{version}/AWS_VPN_Client.pkg",
      verified: "d20adtppz83p9s.cloudfront.net/"
  name "AWS Client VPN"
  desc "Managed client-based VPN service to securely access AWS resources"
  homepage "https://aws.amazon.com/vpn/"

  livecheck do
    url "https://docs.aws.amazon.com/vpn/latest/clientvpn-user/release-notes.html#release-notes-macos"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/AWS_VPN_Client\.pkg}i)
  end

  pkg "AWS_VPN_Client.pkg"

  uninstall pkgutil:   "com.amazon.awsvpnclient",
            quit:      "com.amazonaws.acvc.osx",
            launchctl: "com.amazonaws.acvc.helper"

  zap trash: [
    "/Applications/AWS VPN Client",
    "/Library/Application Support/AWSVPNClient",
    "/Library/LaunchDaemons/com.amazonaws.acvc.helper.plist",
    "/Library/PrivilegedHelperTools/com.amazonaws.acvc.helper",
    "~/.config/AWSVPNClient",
    "~/Library/Preferences/com.amazonaws.acvc.osx.plist",
    "~/Library/Saved Application State/com.amazonaws.acvc.osx.savedState",
  ]
end
