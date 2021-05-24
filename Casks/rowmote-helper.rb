cask "rowmote-helper" do
  version "4.2.4"
  sha256 "552cdb8acd46758caa1944b46e5d3f2b53f4cbf1da70b195fc35a18804370cfd"

  url "https://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  name "Rowmote Helper"
  homepage "https://regularrateandrhythm.com/apps/rowmote-pro/"

  livecheck do
    url :homepage
    regex(/Rowmote\s+Helper\s+(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Rowmote Helper.app"
end
