cask "font-batangche" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/batangche/BatangChe-Regular.ttf"
  name "BatangChe"
  homepage "https://github.com/googlefonts/batang"

  font "BatangChe-Regular.ttf"

  # No zap stanza required
end
