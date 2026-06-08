cask "font-lovers-quarrel" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/loversquarrel/LoversQuarrel-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lovers Quarrel"
  homepage "https://fonts.google.com/specimen/Lovers+Quarrel"

  font "LoversQuarrel-Regular.ttf"

  # No zap stanza required
end
