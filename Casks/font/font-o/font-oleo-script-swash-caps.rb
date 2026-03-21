cask "font-oleo-script-swash-caps" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oleoscriptswashcaps"
  name "Oleo Script Swash Caps"
  homepage "https://fonts.google.com/specimen/Oleo+Script+Swash+Caps"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oleo Script Swash Caps",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OleoScriptSwashCaps-Bold.ttf"
  font "OleoScriptSwashCaps-Regular.ttf"

  # No zap stanza required
end
