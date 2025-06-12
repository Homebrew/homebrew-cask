cask "r-name" do
  version "3.1"
  sha256 :no_check

  url "https://www.jacek-dom.net/software/R-Name/R-Name.app.zip"
  name "R-Name"
  homepage "https://www.jacek-dom.net/software/R-Name/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-08-25", because: :unmaintained

  app "R-Name.app"

  caveats do
    requires_rosetta
  end
end
