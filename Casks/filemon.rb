cask "filemon" do
  version "2.0"
  sha256 :no_check

  url "http://newosxbook.com/tools/filemon.tgz"
  name "File Monitor"
  homepage "http://NewOSXBook.com/tools/filemon.html"

  livecheck do
    url :homepage
    regex(/File\s*Monitor\s+(\d+(?:\.\d+)+)/i)
  end

  binary "filemon"
end
