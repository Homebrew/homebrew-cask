cask "aws-vpn-client" do
  arch arm: "_ARM64"

  version "6.3.2"
  sha256 arm:   "56c33934b8ea285507c82eb6c1bef970eb1f026108581cab409b80f4ed8a76b2",
         intel: "494c1941c4536c67659e3b40f2dff2e39353b33524eb3f559a003369a71a4a4e"

  url "https://d3c4iklh14o4hj.cloudfront.net/OSX#{arch}/#{version}/AWS_VPN_Client#{arch}.pkg"
  name "AWS Client VPN"
  desc "Managed client-based VPN service to securely access AWS resources"
  homepage "https://aws.amazon.com/vpn/"

  livecheck do
    url "https://docs.aws.amazon.com/vpn/latest/clientvpn-user/client-vpn-connect-macos-release-notes.html"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/AWS_VPN_Client#{arch}\.pkg}i)
  end

  auto_updates true
  depends_on :macos

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
