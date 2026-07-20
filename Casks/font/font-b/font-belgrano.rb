cask "font-belgrano" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/belgrano/Belgrano-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Belgrano"
  homepage "https://fonts.google.com/specimen/Belgrano"

  font "Belgrano-Regular.ttf"

  # No zap stanza required
end
