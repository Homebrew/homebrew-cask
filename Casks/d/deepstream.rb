cask "deepstream" do
  version "10.1.1"
  sha256 "d5d5686099412f880be691f475d1b8f0c417d0cfd957f22d27f89dc8e86ddea5"

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
