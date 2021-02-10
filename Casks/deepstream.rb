cask "deepstream" do
  version "5.1.8"
  sha256 "4709234cca7d2c012803d7990955def4c44504a247568dd32db0b6e4d5234f47"

  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg",
      verified: "github.com/deepstreamIO/deepstream.io/"
  appcast "https://github.com/deepstreamIO/deepstream.io/releases.atom"
  name "deepstream"
  homepage "https://deepstream.io/"

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: "deepstream.io"

  caveats do
    files_in_usr_local
  end
end
