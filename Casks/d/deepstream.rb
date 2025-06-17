cask "deepstream" do
  version "9.0.1"
  sha256 "7675a294d300e8745414db41f09d18653768b9916b635549dac3463b2d5db4a0"

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
