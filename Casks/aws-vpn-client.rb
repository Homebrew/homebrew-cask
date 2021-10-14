cask "aws-vpn-client" do
  version "1.3.5"
  sha256 :no_check

  url "https://d20adtppz83p9s.cloudfront.net/OSX/1.3.5/AWS_VPN_Client.pkg",
      verified: "d20adtppz83p9s.cloudfront.net/"
  name "AWS Client VPN"
  homepage "https://aws.amazon.com/vpn/"
  # Release notes: https://docs.aws.amazon.com/vpn/latest/clientvpn-user/release-notes.html#release-notes-macos

  pkg "AWS_VPN_Client.pkg"

  uninstall pkgutil:   "com.amazon.awsvpnclient",
            quit:      "com.amazonaws.acvc.osx",
            launchctl: "com.amazonaws.acvc.helper"
end
