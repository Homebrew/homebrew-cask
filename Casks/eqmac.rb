cask "eqmac" do
  version "0.3.7"
  sha256 "3285aa75f8735e89d8bd2ffa5be1d859b6cc7b9d9f0dc5864142aaf3a0ffa470"

  # github.com/bitgapp/eqMac/ was verified as official when first introduced to the cask
  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.pkg"
  appcast "https://github.com/bitgapp/eqMac/releases.atom"
  name "eqMac"
  desc "System-wide audio equalizer"
  homepage "https://eqmac.app/"

  pkg "eqMac.pkg"

  uninstall pkgutil: "com.bitgapp.eqmac.pkg",
            quit:    "com.bitgapp.eqmac"
end
