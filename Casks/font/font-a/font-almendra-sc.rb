cask "font-almendra-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/almendrasc/AlmendraSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Almendra SC"
  homepage "https://fonts.google.com/specimen/Almendra+SC"

  font "AlmendraSC-Regular.ttf"

  # No zap stanza required
end
