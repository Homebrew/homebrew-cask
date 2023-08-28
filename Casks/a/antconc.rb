cask "antconc" do
  arch arm: "silicon", intel: "intel"

  version "4.2.2"
  sha256 arm:   "d5b9faa095f4da346e07e3e552850357983fddb87a4fbfa8cf8ab2bcb1b26908",
         intel: "ad347d0189997500929f947c415fe9d3b1972d24e3551ba3bf7a6a95d46d2c63"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/apple-#{arch}/AntConc.dmg"
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
