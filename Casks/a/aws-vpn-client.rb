cask "aws-vpn-client" do
  arch arm: "_ARM64"

  version "5.3.3"
  sha256 arm:   "97c4b869ea5a544a4a4fe661580ec21f412b141bb2187fd32fcd97e75581b018",
         intel: "cf8d16ec35b330969510a6cfc828db1157088ad7bb77e0344b87bd7a59921c1f"

  url "https://d20adtppz83p9s.cloudfront.net/OSX#{arch}/#{version}/AWS_VPN_Client#{arch}.pkg",
      verified: "d20adtppz83p9s.cloudfront.net/"
  name "AWS Client VPN"
  desc "Managed client-based VPN service to securely access AWS resources"
  homepage "https://aws.amazon.com/vpn/"

  livecheck do
    url "https://docs.aws.amazon.com/vpn/latest/clientvpn-user/client-vpn-connect-macos-release-notes.html"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/AWS_VPN_Client#{arch}\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "AWS_VPN_Client#{arch}.pkg"

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
