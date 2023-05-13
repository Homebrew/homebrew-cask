cask "aws-vpn-client" do
  version "3.3.0"
  sha256 "3cb854d3f43104c9b33bb3dd26ecea26b332408ae85d61f87effecf983ce56eb"

  url "https://d20adtppz83p9s.cloudfront.net/OSX/#{version}/AWS_VPN_Client.pkg",
      verified: "d20adtppz83p9s.cloudfront.net/"
  name "AWS Client VPN"
  desc "Managed client-based VPN service to securely access AWS resources"
  homepage "https://aws.amazon.com/vpn/"

  livecheck do
    url "https://docs.aws.amazon.com/vpn/latest/clientvpn-user/client-vpn-connect-macos.html"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/AWS_VPN_Client\.pkg}i)
  end

  depends_on macos: ">= :big_sur"

  pkg "AWS_VPN_Client.pkg"

  uninstall pkgutil:   "com.amazon.awsvpnclient",
            quit:      "com.amazonaws.acvc.osx",
            launchctl: "com.amazonaws.acvc.helper",
            delete:    [
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
