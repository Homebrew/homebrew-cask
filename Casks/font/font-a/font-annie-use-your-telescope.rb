cask "font-annie-use-your-telescope" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/annieuseyourtelescope/AnnieUseYourTelescope-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Annie Use Your Telescope"
  homepage "https://fonts.google.com/specimen/Annie+Use+Your+Telescope"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Annie Use Your Telescope",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnnieUseYourTelescope-Regular.ttf"

  # No zap stanza required
end
