cask "font-imperial-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imperialscript/ImperialScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Imperial Script"
  homepage "https://fonts.google.com/specimen/Imperial+Script"

  font "ImperialScript-Regular.ttf"

  # No zap stanza required
end
