cask "deepstream" do
  version "10.1.4"
  sha256 "6201c2a6894c26dcebb1b4754f9ffcc67b7c623ba07ab24e5471f6a003bbd593"

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
