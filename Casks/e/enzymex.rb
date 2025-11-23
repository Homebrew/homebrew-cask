cask "enzymex" do
  version "3.33"
  sha256 :no_check

  url "https://downloads.nucleobytes.com/enzymex.dmg"
  name "EnzymeX"
  desc "Visualise and edit DNA sequence files"
  homepage "https://nucleobytes.com/enzymex/index.html"

  livecheck do
    url "https://nucleobytes.com/versionEnzymeX.txt"
    regex(/\d+(?:\.\d+)+/i)
  end

  app "EnzymeX.app"

  zap trash: [
    "~/Library/Application Support/EnzymeX",
    "~/Library/Caches/com.mekentosj.enzymex",
    "~/Library/Preferences/com.mekentosj.enzymex.plist",
    "~/Library/Saved Application State/com.mekentosj.enzymex.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
