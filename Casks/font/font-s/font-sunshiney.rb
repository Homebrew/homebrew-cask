cask "font-sunshiney" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/sunshiney/Sunshiney-Regular.ttf"
  name "Sunshiney"
  homepage "https://fonts.google.com/specimen/Sunshiney"

  font "Sunshiney-Regular.ttf"

  # No zap stanza required
end
