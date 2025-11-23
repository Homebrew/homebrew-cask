cask "font-aref-ruqaa-ink" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arefruqaaink"
  name "Aref Ruqaa Ink"
  homepage "https://fonts.google.com/specimen/Aref+Ruqaa+Ink"

  font "ArefRuqaaInk-Bold.ttf"
  font "ArefRuqaaInk-Regular.ttf"

  # No zap stanza required
end
