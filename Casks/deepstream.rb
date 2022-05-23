cask "deepstream" do
  version "6.1.2"
  sha256 "ad6b1497f99e15a1443f9741b0b41a6a2124ea6a3fbab919c3049f05d869d6bd"

  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg",
      verified: "github.com/deepstreamIO/deepstream.io/"
  name "deepstream"
  desc "Data-sync realtime server"
  homepage "https://deepstream.io/"

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: "deepstream.io"

  caveats do
    files_in_usr_local
  end
end
