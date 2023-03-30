cask "anonymousvpn" do
  version "2.0.1.14"
  sha256 :no_check

  url "https://dl.anonymousvpn.org/AnonymousVPN.pkg"
  name "Anonymous VPN"
  homepage "https://www.anonymousvpn.org/"

  livecheck do
    skip "app does not contain a bundle identifier"
  end

  pkg "AnonymousVPN.pkg"

  uninstall pkgutil:   "org.anonymousvpn.pkg",
            launchctl: [
              "org.AnonymousVPN.helper",
              "org.strongswan.charon-xpc",
            ]
end
