cask "font-revalia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/revalia/Revalia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Revalia"
  homepage "https://fonts.google.com/specimen/Revalia"

  font "Revalia-Regular.ttf"

  # No zap stanza required
end
