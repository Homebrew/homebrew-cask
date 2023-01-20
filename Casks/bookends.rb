cask "bookends" do
  version "14.1.6"
  sha256 :no_check

  url "https://www.sonnysoftware.com/Bookends.dmg"
  name "Bookends"
  desc "Reference management and bibliography software"
  homepage "https://www.sonnysoftware.com/"

  livecheck do
    url :homepage
    regex(/appversion = " in v\. (\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Bookends.app"
end
