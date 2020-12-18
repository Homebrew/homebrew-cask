cask "saoimageds9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "8.2"

  if MacOS.version <= :high_sierra
    sha256 "a4c17529bb44d50c462eb30b289d49d9611ff2032debfcc2e3d4a6a48d650ac1"
    url "https://ds9.si.edu/download/macoshighsierra/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  elsif MacOS.version <= :mojave
    sha256 "db4ae8d61d60c3bcbd536d6bfa4fbf9352ba445b2fe835d016b2b446625f2a4b"
    url "https://ds9.si.edu/download/macosmojave/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  else
    sha256 "1d937429d89cf5106e70e985bf2b835b145900b932fdeeeebbe1e7ab3b9bf066"
    url "https://ds9.si.edu/download/macoscatalina/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end

  appcast "https://sites.google.com/cfa.harvard.edu/saoimageds9/download"
  name "SAOImage DS9"
  homepage "https://sites.google.com/cfa.harvard.edu/saoimageds9/home"

  depends_on macos: ">= :high_sierra"

  app "SAOImageDS9.app"
end
