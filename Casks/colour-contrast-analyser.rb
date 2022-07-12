cask "colour-contrast-analyser" do
  version "3.2.0"
  sha256 "2afd22cc174957561d6271810455a7394a9f6ed418c22914ca750ec66849840f"

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg",
      verified: "github.com/ThePacielloGroup/CCAe/"
  name "Colour Contrast Analyser"
  desc "Color contrast checker"
  homepage "https://www.tpgi.com/color-contrast-checker/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Colour Contrast Analyser.app"
end
