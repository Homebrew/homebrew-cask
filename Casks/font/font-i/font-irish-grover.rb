cask "font-irish-grover" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/irishgrover/IrishGrover-Regular.ttf"
  name "Irish Grover"
  homepage "https://fonts.google.com/specimen/Irish+Grover"

  font "IrishGrover-Regular.ttf"

  # No zap stanza required
end
