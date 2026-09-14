cask "font-gulimche" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gulimche/GulimChe-Regular.ttf"
  name "GulimChe"
  homepage "https://github.com/googlefonts/gulim"

  font "GulimChe-Regular.ttf"

  # No zap stanza required
end
