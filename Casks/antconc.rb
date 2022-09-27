cask "antconc" do
  version "4.1.2"
  sha256 "1a9054deb4bdfdc0efe8ad6a4ffe3b4af84341abf96875fa05aa75aa8952c790"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.dmg"
  name "AntConc"
  desc "Corpus analysis toolkit for concordancing and text analysis"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  livecheck do
    url :homepage
    regex(/>\s*Mac[^<]*\((\d+(?:\.\d+)+)\)\s*</i)
  end

  app "AntConc.app"

  zap trash: "~/Library/Preferences/AntConc.plist"
end
