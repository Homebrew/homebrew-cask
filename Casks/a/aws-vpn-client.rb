cask "aws-vpn-client" do
  version "5.0.3"
  sha256 "8ce0f91ce81c322cead3ed27948ddeda4d5a61f5ed5a6115ab8e18f5d8963f6b"

  url "https://d20adtppz83p9s.cloudfront.net/OSX/#{version}/AWS_VPN_Client.pkg",
      verified: "d20adtppz83p9s.cloudfront.net/"
  name "AWS Client VPN"
  desc "Managed client-based VPN service to securely access AWS resources"
  homepage "https://aws.amazon.com/vpn/"

  livecheck do
    url "https://docs.aws.amazon.com/vpn/latest/clientvpn-user/client-vpn-connect-macos-release-notes.html"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/AWS_VPN_Client\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "AWS_VPN_Client.pkg"

  uninstall launchctl: "com.amazonaws.acvc.helper",
            quit:      "com.amazonaws.acvc.osx",
            pkgutil:   "com.amazon.awsvpnclient",
            delete:    [
              "/Applications/AWS VPN Client",
              "/Library/Application Support/AWSVPNClient",
              "/Library/LaunchDaemons/com.amazonaws.acvc.helper.plist",
              "/Library/PrivilegedHelperTools/com.amazonaws.acvc.helper",
            ]

  zap trash: [
    "~/.config/AWSVPNClient",
    "~/Library/Preferences/com.amazonaws.acvc.osx.plist",
    "~/Library/Saved Application State/com.amazonaws.acvc.osx.savedState",
  ]
end
