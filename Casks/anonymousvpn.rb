cask "anonymousvpn" do
  version "5.7.1"
  sha256 :no_check

  url "https://dl.anonymousvpn.org/AnonymousVPN.pkg"
  name "Anonymous VPN"
  homepage "https://www.anonymousvpn.org/"

  pkg "AnonymousVPN.pkg"

  uninstall pkgutil:   "org.anonymousvpn.pkg",
            launchctl: [
              "org.AnonymousVPN.helper",
              "org.strongswan.charon-xpc",
            ]
end
