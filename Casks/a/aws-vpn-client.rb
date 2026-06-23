cask "aws-vpn-client" do
  arch arm: "_ARM64"

  version "5.4.0"
  sha256 arm:   "b9b6c384fd265fc5d2b94467c5dcd80c47c1a1265623f157ec8b99b833ad82a9",
         intel: "c9729ad51c1ede2551e27d7a7affedfe9fe7a8935b5635ddf554715fb8c1a61b"

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
