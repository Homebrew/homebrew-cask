cask "font-aref-ruqaa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arefruqaa"
  name "Aref Ruqaa"
  homepage "https://fonts.google.com/specimen/Aref+Ruqaa"

  font "ArefRuqaa-Bold.ttf"
  font "ArefRuqaa-Regular.ttf"

  # No zap stanza required
end
