cask "aws-vpn-client" do
  arch arm: "_ARM64"

  version "6.3.1"
  sha256 arm:   "c6acc93de26e21d9a6654bee28efe0d600f3baa1d61b54c905b35b16431c5c95",
         intel: "dffe7d7d565facfe79b3355fa08a0383b790cd7d402e9413ddc19bedc379f97e"

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
