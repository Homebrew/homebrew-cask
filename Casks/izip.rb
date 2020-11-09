cask "izip" do
  version "3.9"
  sha256 "6832ef37f7ac8b234360e2aec45328df1d15365ee1ec9f51b05184a7aa426915"

  url "https://www.izip.com/izip.dmg"
  appcast "https://www.izip.com/download"
  name "iZip"
  desc "App to manage ZIP, ZIPX, RAR, TAR, 7ZIP and other compressed files"
  homepage "https://www.izip.com/"

  app "iZip.app"
end
