cask "font-tagesschrift" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tagesschrift/Tagesschrift-Regular.ttf"
  name "Tagesschrift"
  homepage "https://github.com/yanone/tagesschrift"

  font "Tagesschrift-Regular.ttf"

  # No zap stanza required
end
