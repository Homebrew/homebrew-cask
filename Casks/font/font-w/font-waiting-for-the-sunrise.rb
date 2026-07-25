cask "font-waiting-for-the-sunrise" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/waitingforthesunrise/WaitingfortheSunrise.ttf",
      verified: "github.com/google/fonts/"
  name "Waiting for the Sunrise"
  homepage "https://fonts.google.com/specimen/Waiting+for+the+Sunrise"

  font "WaitingfortheSunrise.ttf"

  # No zap stanza required
end
