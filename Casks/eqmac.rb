cask "eqmac" do
  version "0.3.7"
  sha256 "3285aa75f8735e89d8bd2ffa5be1d859b6cc7b9d9f0dc5864142aaf3a0ffa470"

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.pkg",
      verified: "github.com/bitgapp/eqMac/"
  name "eqMac"
  desc "System-wide audio equalizer"
  homepage "https://eqmac.app/"

  pkg "eqMac.pkg"

  uninstall pkgutil: "com.bitgapp.eqmac.pkg",
            quit:    "com.bitgapp.eqmac"
end
