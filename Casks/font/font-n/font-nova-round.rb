cask "font-nova-round" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novaround/NovaRound.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Round"
  homepage "https://fonts.google.com/specimen/Nova+Round"

  font "NovaRound.ttf"

  # No zap stanza required
end
