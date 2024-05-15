cask "font-nova-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novascript/NovaScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Script"
  homepage "https://fonts.google.com/specimen/Nova+Script"

  font "NovaScript-Regular.ttf"

  # No zap stanza required
end
