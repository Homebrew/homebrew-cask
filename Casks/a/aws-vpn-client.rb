cask "aws-vpn-client" do
  arch arm: "_ARM64"

  version "6.1.1"
  sha256 arm:   "e7a804b6172cec9507eb497729cd001f7acb269e58080aa7ba941f1513cc53b0",
         intel: "0500fcc9daef464cde2f59dfbb8dc08f19801d486e291031529d2d0e1bf2e68b"

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
