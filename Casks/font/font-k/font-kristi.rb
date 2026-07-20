cask "font-kristi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kristi/Kristi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kristi"
  homepage "https://fonts.google.com/specimen/Kristi"

  font "Kristi-Regular.ttf"

  # No zap stanza required
end
