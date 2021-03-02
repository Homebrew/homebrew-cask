cask "deepstream" do
  version "5.2.1"
  sha256 "3a51f7bb5f730367a37b560afc58ca14934af9dfdbd147179f9916809c95db93"

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
