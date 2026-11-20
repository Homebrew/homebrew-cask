cask "font-dotumche" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dotumche/DotumChe-Regular.ttf"
  name "DotumChe"
  homepage "https://github.com/googlefonts/gulim"

  font "DotumChe-Regular.ttf"

  zap :not_required
end
