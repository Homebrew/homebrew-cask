cask "enzymex" do
  version "3.33"
  sha256 :no_check

  url "https://downloads.nucleobytes.com/enzymex.dmg"
  name "EnzymeX"
  desc "Visualise and edit DNA sequence files"
  homepage "https://nucleobytes.com/enzymex/index.html"

  livecheck do
    url "https://nucleobytes.com/versionEnzymeX.txt"
    regex(/\d+(?:\.\d+)+/)
  end

  app "EnzymeX.app"
end
