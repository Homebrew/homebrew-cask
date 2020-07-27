cask "aws-vpn-client" do
  version :latest
  sha256 :no_check

  # d20adtppz83p9s.cloudfront.net was verified as official when first introduced to the cask
  url "https://d20adtppz83p9s.cloudfront.net/OSX/latest/AWS_VPN_Client.pkg"
  name "AWS Client VPN"
  homepage "https://aws.amazon.com/vpn/"

  pkg "AWS_VPN_Client.pkg"

  uninstall pkgutil:   "com.amazon.awsvpnclient",
            quit:      "com.amazonaws.acvc.osx",
            launchctl: "com.amazonaws.acvc.helper"
end
