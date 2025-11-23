cask "font-lily-script-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lilyscriptone/LilyScriptOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lily Script One"
  homepage "https://fonts.google.com/specimen/Lily+Script+One"

  font "LilyScriptOne-Regular.ttf"

  # No zap stanza required
end
