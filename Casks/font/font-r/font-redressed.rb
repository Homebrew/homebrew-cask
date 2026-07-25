cask "font-redressed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/redressed/Redressed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Redressed"
  homepage "https://fonts.google.com/specimen/Redressed"

  font "Redressed-Regular.ttf"

  # No zap stanza required
end
