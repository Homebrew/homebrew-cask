cask "font-annie-use-your-telescope" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/annieuseyourtelescope/AnnieUseYourTelescope-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Annie Use Your Telescope"
  homepage "https://fonts.google.com/specimen/Annie+Use+Your+Telescope"

  font "AnnieUseYourTelescope-Regular.ttf"

  # No zap stanza required
end
