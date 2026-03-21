cask "font-aleo" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/aleo"
  name "Aleo"
  homepage "https://fonts.google.com/specimen/Aleo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aleo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Aleo-Italic[wght].ttf"
  font "Aleo[wght].ttf"

  # No zap stanza required
end
