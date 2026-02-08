cask "font-idiqlat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/idiqlat"
  name "Idiqlat"
  homepage "https://github.com/silnrsi/font-idiqlat"

  font "Idiqlat-ExtraLight.ttf"
  font "Idiqlat-Light.ttf"
  font "Idiqlat-Regular.ttf"

  # No zap stanza required
end
