cask "font-kenia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kenia/Kenia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kenia"
  homepage "https://fonts.google.com/specimen/Kenia"

  font "Kenia-Regular.ttf"

  # No zap stanza required
end
