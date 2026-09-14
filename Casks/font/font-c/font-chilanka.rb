cask "font-chilanka" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chilanka/Chilanka-Regular.ttf"
  name "Chilanka"
  homepage "https://fonts.google.com/specimen/Chilanka"

  font "Chilanka-Regular.ttf"

  # No zap stanza required
end
