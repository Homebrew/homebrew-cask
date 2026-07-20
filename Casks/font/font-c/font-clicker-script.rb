cask "font-clicker-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/clickerscript/ClickerScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Clicker Script"
  homepage "https://fonts.google.com/specimen/Clicker+Script"

  font "ClickerScript-Regular.ttf"

  # No zap stanza required
end
