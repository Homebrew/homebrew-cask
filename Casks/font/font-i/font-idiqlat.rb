cask "font-idiqlat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/idiqlat"
  name "Idiqlat"
  homepage "https://fonts.google.com/specimen/Idiqlat"

  font "Idiqlat-ExtraLight.ttf"
  font "Idiqlat-Light.ttf"
  font "Idiqlat-Regular.ttf"

  zap :not_required
end
