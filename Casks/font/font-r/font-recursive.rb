cask "font-recursive" do
  version "1.085"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/recursive/Recursive%5BCASL%2CCRSV%2CMONO%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Recursive"
  homepage "https://fonts.google.com/specimen/Recursive"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Recursive",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Recursive[CASL,CRSV,MONO,slnt,wght].ttf"

  # No zap stanza required
end
