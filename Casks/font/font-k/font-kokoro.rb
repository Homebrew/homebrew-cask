cask "font-kokoro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kokoro/Kokoro-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kokoro"
  homepage "https://fonts.google.com/specimen/Kokoro"

  font "Kokoro-Regular.ttf"

  # No zap stanza required
end
