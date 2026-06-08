cask "font-akaya-telivigala" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akayatelivigala/AkayaTelivigala-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Akaya Telivigala"
  homepage "https://fonts.google.com/specimen/Akaya+Telivigala"

  font "AkayaTelivigala-Regular.ttf"

  # No zap stanza required
end
