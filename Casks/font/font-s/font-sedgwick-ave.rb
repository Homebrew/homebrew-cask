cask "font-sedgwick-ave" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sedgwickave/SedgwickAve-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sedgwick Ave"
  homepage "https://fonts.google.com/specimen/Sedgwick+Ave"

  font "SedgwickAve-Regular.ttf"

  # No zap stanza required
end
