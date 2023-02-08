cask "deepstream" do
  version "6.2.2"
  sha256 "e6edeee5cda76e67a14586ca11248261239e2718779b1726e8f06c739ba49e3b"

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
