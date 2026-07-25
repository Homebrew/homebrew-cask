cask "font-oleo-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oleoscript"
  name "Oleo Script"
  homepage "https://fonts.google.com/specimen/Oleo+Script"

  font "OleoScript-Bold.ttf"
  font "OleoScript-Regular.ttf"

  # No zap stanza required
end
