cask "subler" do
  version "1.6.8"
  sha256 "d9d0c84725d8f2abccdbccc42d5ad1fd563b590a238df657c5d11e28dfbdfcdc"

  # bitbucket.org/galad87/subler/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast "https://subler.org/appcast/appcast.xml"
  name "Subler"
  desc "Mux and tag mp4 files"
  homepage "https://subler.org/"

  auto_updates true

  app "Subler.app"

  zap trash: [
    "~/Library/Preferences/org.galad.Subler.plist",
    "~/Library/Application Support/Subler",
    "~/Library/Caches/org.galad.Subler",
    "~/Library/Saved Application State/org.galad.Subler.savedState",
  ]
end
