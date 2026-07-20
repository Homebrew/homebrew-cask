cask "font-oleo-script-swash-caps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oleoscriptswashcaps"
  name "Oleo Script Swash Caps"
  homepage "https://fonts.google.com/specimen/Oleo+Script+Swash+Caps"

  font "OleoScriptSwashCaps-Bold.ttf"
  font "OleoScriptSwashCaps-Regular.ttf"

  # No zap stanza required
end
