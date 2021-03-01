cask "deepstream" do
  version "5.2.0"
  sha256 "0d97c8cd84df837a29e1221250dac3528fd529993150e049f6029c3a11ba672b"

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
