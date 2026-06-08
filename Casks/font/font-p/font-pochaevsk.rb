cask "font-pochaevsk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pochaevsk/Pochaevsk-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pochaevsk"
  homepage "https://fonts.google.com/specimen/Pochaevsk"

  font "Pochaevsk-Regular.ttf"

  # No zap stanza required
end
