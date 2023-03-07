cask "deepstream" do
  version "7.0.3"
  sha256 "e9b5edf3ab2e880e8b10f43319e4c344770ca4f249b72fdba96d86ee3444c4ad"

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
