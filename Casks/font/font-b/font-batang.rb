cask "font-batang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/batang/Batang-Regular.ttf"
  name "Batang"
  homepage "https://github.com/googlefonts/batang"

  font "Batang-Regular.ttf"

  # No zap stanza required
end
