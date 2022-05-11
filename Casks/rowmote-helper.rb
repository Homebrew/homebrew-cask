cask "rowmote-helper" do
  version "4.2.5"
  sha256 "9646af824fcfcbddbf71591408bd02137b65554650418574ddc5ba0c45cd59f4"

  url "https://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  name "Rowmote Helper"
  desc "Control system with Rowmote Pro remote control"
  homepage "https://regularrateandrhythm.com/apps/rowmote-pro/"

  livecheck do
    url :homepage
    regex(/Rowmote\s+Helper\s+v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Rowmote Helper.app"
end
