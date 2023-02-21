cask "bookends" do
  version "14.1.7"
  sha256 :no_check

  url "https://www.sonnysoftware.com/bookends-for-mac/downloads/Bookends.dmg"
  name "Bookends"
  desc "Reference management and bibliography software"
  homepage "https://www.sonnysoftware.com/bookends-for-mac"

  livecheck do
    url :homepage
    regex(/appversion\s=\s"\sin\sv\.\s(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Bookends.app"
end
