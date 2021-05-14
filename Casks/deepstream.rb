cask "deepstream" do
  version "5.2.4"
  sha256 "8cb328f707f938092d4a597a6437e027341fd27699f41e282a09aee6a375af16"

  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg",
      verified: "github.com/deepstreamIO/deepstream.io/"
  name "deepstream"
  homepage "https://deepstream.io/"

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: "deepstream.io"

  caveats do
    files_in_usr_local
  end
end
