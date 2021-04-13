cask "busycontacts" do
  version "1.5.2,2021-04-03-18-27"
  sha256 "eb23b4b807a8667669031ac492ec263a81ef330b0e8962115c83207504348992"

  url "https://7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/bct-#{version.before_comma}-#{version.after_comma}.zip",
      verified: "7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/"
  name "BusyContacts"
  desc "Contact manager focusing on efficiency"
  homepage "https://www.busymac.com/busycontacts/index.html"

  livecheck do
    url "https://www.busymac.com/download/BusyContacts.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(/bct-(\d+(?:\.\d+)*)-(.*?)\.zip/)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  pkg "BusyContacts Installer.pkg"

  uninstall pkgutil: "com.busymac.busycontacts.pkg",
            quit:    "com.busymac.busycontacts",
            signal:  ["KILL", "com.busymac.busycontacts"]
end
