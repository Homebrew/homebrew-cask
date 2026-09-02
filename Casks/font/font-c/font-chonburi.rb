cask "font-chonburi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chonburi/Chonburi-Regular.ttf"
  name "Chonburi"
  homepage "https://fonts.google.com/specimen/Chonburi"

  font "Chonburi-Regular.ttf"

  # No zap stanza required
end
