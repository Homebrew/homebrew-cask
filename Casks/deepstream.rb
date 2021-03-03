cask "deepstream" do
  version "5.2.2"
  sha256 "8241774de0a32d883d56236276a8462b7de43e0abac12bfdd86e6d791660c281"

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
