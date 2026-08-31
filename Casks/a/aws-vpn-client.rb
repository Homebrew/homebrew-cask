cask "aws-vpn-client" do
  arch arm: "_ARM64"

  version "6.0.3"
  sha256 arm:   "94b62371a679d05b69edc2c6768b1c2a5652676a5403ce787cbafaeec92cec5a",
         intel: "3d96ffddbb2bfe40f3b22f5f02cff47aa23da48fb5fde1d341a2c79bc2831b2a"

  url "https://d3c4iklh14o4hj.cloudfront.net/OSX#{arch}/#{version}/AWS_VPN_Client#{arch}.pkg"
  name "AWS Client VPN"
  desc "Managed client-based VPN service to securely access AWS resources"
  homepage "https://aws.amazon.com/vpn/"

  livecheck do
    url "https://docs.aws.amazon.com/vpn/latest/clientvpn-user/client-vpn-connect-macos-release-notes.html"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/AWS_VPN_Client#{arch}\.pkg}i)
  end

  auto_updates true
  depends_on macos: :big_sur

  pkg "AWS_VPN_Client#{arch}.pkg"

  uninstall launchctl: [
              "com.amazonaws.acvc.helper",
              "com.amazonaws.acvc.osx.core",
            ],
            quit:      "com.amazonaws.acvc.osx",
            pkgutil:   "com.amazon.awsvpnclient",
            delete:    [
              "/Applications/AWS VPN Client",
              "/Library/Application Support/AWSVPNClient",
              "/Library/LaunchDaemons/com.amazonaws.acvc.helper.plist",
              "/Library/LaunchDaemons/com.amazonaws.acvc.osx.core.plist",
              "/Library/PrivilegedHelperTools/com.amazonaws.acvc.helper",
              "/usr/local/bin/aws-vpn-client",
            ]

  zap trash: [
    "~/.config/AWSVPNClient",
    "~/Library/Preferences/com.amazonaws.acvc.osx.plist",
    "~/Library/Saved Application State/com.amazonaws.acvc.osx.savedState",
  ]
end
