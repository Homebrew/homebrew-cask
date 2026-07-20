cask "font-nova-flat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaflat/NovaFlat.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Flat"
  homepage "https://fonts.google.com/specimen/Nova+Flat"

  font "NovaFlat.ttf"

  # No zap stanza required
end
