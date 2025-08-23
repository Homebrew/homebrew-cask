cask "deepstream" do
  version "10.0.0"
  sha256 "ac268f1bf0fc28b57a432ef04d72205c6d3092c2f178229d23a76223c6bd0297"

  url "https://github.com/deepstreamIO/deepstream.io/releases/download/v#{version}/deepstream.io-mac-#{version}.pkg",
      verified: "github.com/deepstreamIO/deepstream.io/"
  name "deepstream"
  desc "Data-sync realtime server"
  homepage "https://deepstream.io/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  pkg "deepstream.io-mac-#{version}.pkg"

  uninstall pkgutil: "deepstream.io"

  # No zap stanza required

  caveats do
    files_in_usr_local
  end
end
