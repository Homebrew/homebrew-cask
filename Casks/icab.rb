cask "icab" do
  version "6.0.5"
  sha256 "b2a5c24c3be117800ce36762b3f9f390720cea00aef654d07a09d540ca19f76a"

  # icab.clauss-net.de/ was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version}.zip"
  appcast "http://www.icab.de/download.html",
          must_contain: version.major_minor
  name "iCab"
  desc "Alternative web browser"
  homepage "http://www.icab.de/"

  depends_on macos: ">= :high_sierra"

  app "iCab #{version}/iCab.app"
end
