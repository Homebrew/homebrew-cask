cask "font-forum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/forum/Forum-Regular.ttf"
  name "Forum"
  homepage "https://fonts.google.com/specimen/Forum"

  font "Forum-Regular.ttf"

  # No zap stanza required
end
