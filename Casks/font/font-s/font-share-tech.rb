cask "font-share-tech" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sharetech/ShareTech-Regular.ttf"
  name "Share Tech"
  homepage "https://fonts.google.com/specimen/Share+Tech"

  font "ShareTech-Regular.ttf"

  # No zap stanza required
end
