cask "font-pinyon-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pinyonscript/PinyonScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pinyon Script"
  homepage "https://fonts.google.com/specimen/Pinyon+Script"

  font "PinyonScript-Regular.ttf"

  # No zap stanza required
end
