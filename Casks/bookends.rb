cask "bookends" do
  version "13.5.4"
  sha256 :no_check

  url "https://www.sonnysoftware.com/Bookends.dmg"
  name "Bookends"
  desc "Reference management and bibliography software"
  homepage "https://www.sonnysoftware.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/version\s*(\d+(?:\.\d+)*)/i)
  end

  app "Bookends.app"
end
