cask "font-abyssinica-sil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/abyssinicasil/AbyssinicaSIL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Abyssinica SIL"
  homepage "https://fonts.google.com/specimen/Abyssinica+SIL"

  font "AbyssinicaSIL-Regular.ttf"

  # No zap stanza required
end
