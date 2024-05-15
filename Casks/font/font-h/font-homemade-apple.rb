cask "font-homemade-apple" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/homemadeapple/HomemadeApple-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Homemade Apple"
  homepage "https://fonts.google.com/specimen/Homemade+Apple"

  font "HomemadeApple-Regular.ttf"

  # No zap stanza required
end
