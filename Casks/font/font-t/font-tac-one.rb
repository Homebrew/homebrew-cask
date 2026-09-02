cask "font-tac-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tacone/TacOne-Regular.ttf"
  name "Tac One"
  homepage "https://fonts.google.com/specimen/Tac+One"

  font "TacOne-Regular.ttf"

  # No zap stanza required
end
