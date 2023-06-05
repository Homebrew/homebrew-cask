cask "r-name" do
  version "3.1"
  sha256 :no_check

  url "https://www.jacek-dom.net/software/R-Name/R-Name.app.zip"
  name "R-Name"
  homepage "https://www.jacek-dom.net/software/R-Name/"

  livecheck do
    url :homepage
    regex(/version\s+.*?(\d+(?:\.\d+)+)/i)
  end

  app "R-Name.app"
end
