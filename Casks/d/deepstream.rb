cask "deepstream" do
  version "10.2.0"
  sha256 "96a9cf4a037aeba7e45005be3c8609b6931791e16fc65409125d0bd60a129695"

  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg",
      verified: "github.com/deepstreamIO/deepstream.io/"
  name "deepstream"
  desc "Data-sync realtime server"
  homepage "https://deepstream.io/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: "deepstream.io"

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
