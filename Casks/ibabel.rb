cask "ibabel" do
  version "5.0.3,1"
  sha256 :no_check

  url "https://macinchem.org/ibabel/version#{version.major}/iBabel.zip"
  name "iBabel"
  homepage "https://www.macinchem.org/ibabel/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on formula: "open-babel"

  app "iBabel.app"
end
