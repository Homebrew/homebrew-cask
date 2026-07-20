cask "font-spinnaker" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/spinnaker/Spinnaker-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Spinnaker"
  homepage "https://fonts.google.com/specimen/Spinnaker"

  font "Spinnaker-Regular.ttf"

  # No zap stanza required
end
