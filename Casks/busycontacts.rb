cask "busycontacts" do
  version "1.4.11-2020-11-15-03-25"
  sha256 "e2d23240e43f1645a4cb309cc72ca944d9294d5e9407e907dadb637cf01dc05e"

  # 7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com was verified as official when first introduced to the cask
  url "https://7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/bct-#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.busymac.com/download/BusyContacts.zip"
  name "BusyContacts"
  desc "Contact manager focusing on efficiency"
  homepage "https://www.busymac.com/busycontacts/index.html"

  auto_updates true

  pkg "BusyContacts Installer.pkg"

  uninstall pkgutil: "com.busymac.busycontacts.pkg",
            signal:  ["KILL", "com.busymac.busycontacts"]
end
