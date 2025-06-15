cask "deepstream" do
  version "9.0.0"
  sha256 "a0e4b7cbe2d658f3b4472382332b977965d48cddf9b2d8ae1b4251faed9cf853"

  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg",
      verified: "github.com/deepstreamIO/deepstream.io/"
  name "deepstream"
  desc "Data-sync realtime server"
  homepage "https://deepstream.io/"

  no_autobump! because: :requires_manual_review

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: "deepstream.io"

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
