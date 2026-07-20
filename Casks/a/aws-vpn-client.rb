cask "aws-vpn-client" do
  arch arm: "_ARM64"

  version "5.4.1"
  sha256 arm:   "fc442adb7513d355de827ef3c1bece7c1a1b7bd924003a54e6821c0b832f2837",
         intel: "74030656dec26a2653f7e2ea3d23f19e1e8bfb1b518e4420e3c159b868a6aed7"

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
  depends_on macos: :big_sur

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
