cask "font-bpmf-huninn" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bpmfhuninn/BpmfHuninn-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bpmf Huninn"
  homepage "https://fonts.google.com/specimen/Bpmf+Huninn"

  font "BpmfHuninn-Regular.ttf"

  # No zap stanza required
end
