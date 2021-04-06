cask "aws-vpn-client" do
  version :latest
  sha256 :no_check

  url "https://d20adtppz83p9s.cloudfront.net/OSX/latest/AWS_VPN_Client.pkg",
      verified: "d20adtppz83p9s.cloudfront.net/"
  name "AWS Client VPN"
  homepage "https://aws.amazon.com/vpn/"

  pkg "AWS_VPN_Client.pkg"

  uninstall pkgutil:   "com.amazon.awsvpnclient",
            quit:      "com.amazonaws.acvc.osx",
            launchctl: "com.amazonaws.acvc.helper"
end
