cask "font-sue-ellen-francisco" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sueellenfrancisco/SueEllenFrancisco-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sue Ellen Francisco"
  homepage "https://fonts.google.com/specimen/Sue+Ellen+Francisco"

  font "SueEllenFrancisco-Regular.ttf"

  # No zap stanza required
end
