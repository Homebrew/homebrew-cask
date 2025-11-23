cask "font-sedgwick-ave-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sedgwickavedisplay/SedgwickAveDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sedgwick Ave Display"
  homepage "https://fonts.google.com/specimen/Sedgwick+Ave+Display"

  font "SedgwickAveDisplay-Regular.ttf"

  # No zap stanza required
end
