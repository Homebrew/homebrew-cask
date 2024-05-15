cask "font-kaisei-decol" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kaiseidecol"
  name "Kaisei Decol"
  desc "Designed with the same element in kanji, the little dot at the end of the stroke"
  homepage "https://fonts.google.com/specimen/Kaisei+Decol"

  font "KaiseiDecol-Bold.ttf"
  font "KaiseiDecol-Medium.ttf"
  font "KaiseiDecol-Regular.ttf"

  # No zap stanza required
end
