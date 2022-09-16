cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.25.0,2022-09"
  sha256 arm:   "e0a8cb19acbc50463aa86c082b5e5919683151441cd38840e71452da5c9e55a6",
         intel: "396c0088a62f448d1bf8a8cf701dd64ba94b2c32ee5ab5b2d07852c9fd6a3c4a"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-rcp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  desc "Eclipse IDE for RCP and RAP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"
end
