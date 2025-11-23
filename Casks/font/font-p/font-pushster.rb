cask "font-pushster" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pushster/Pushster-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pushster"
  homepage "https://fonts.google.com/specimen/Lobster"

  font "Pushster-Regular.ttf"

  # No zap stanza required
end
