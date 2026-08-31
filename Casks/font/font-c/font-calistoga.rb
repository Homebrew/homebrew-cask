cask "font-calistoga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/calistoga/Calistoga-Regular.ttf"
  name "Calistoga"
  homepage "https://fonts.google.com/specimen/Calistoga"

  font "Calistoga-Regular.ttf"

  # No zap stanza required
end
