cask "deepstream" do
  version "7.0.7"
  sha256 "1ca15f94f062a2b7b076d47d9854e0530e43034a098e1a7f9244ed147e9e4fbc"

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
