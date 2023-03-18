cask "enzymex" do
  version "3.33"
  sha256 :no_check

  url "https://downloads.nucleobytes.com/enzymex.dmg"
  name "EnzymeX"
  desc "Visualize and edit DNA sequence files"
  homepage "https://nucleobytes.com/enzymex/index.html"

  livecheck do
    url "https://nucleobytes.com/versionEnzymeX.txt"
    regex(/\d+(?:\.\d+)+/)
    strategy :page_match
  end

  app "EnzymeX.app"
end
