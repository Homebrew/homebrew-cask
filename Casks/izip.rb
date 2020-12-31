cask "izip" do
  version "3.9"
  sha256 :no_check

  url "https://www.izip.com/izip.dmg"
  appcast "https://www.izip.com/download"
  name "iZip"
  desc "App to manage ZIP, ZIPX, RAR, TAR, 7ZIP and other compressed files"
  homepage "https://www.izip.com/"

  app "iZip.app"
end
