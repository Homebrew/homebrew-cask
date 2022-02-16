cask "ireadfast" do
  version "2.0"
  sha256 "0bc213c6da72a7917ceba8a9de46e307933608cd6d2bf397770517401ab3d98c"

  url "https://www.gengis.net/downloads/iReadFast%20#{version}.dmg"
  name "iReadFast"
  desc "Speed reading program"
  homepage "https://www.gengis.net/prodotti/iReadFast_Mac/en/index.php"

  livecheck do
    url :homepage
    regex(%r{href=.*?/iReadFast\s*v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: "<= :mojave"

  app "iReadFast.app"
end
