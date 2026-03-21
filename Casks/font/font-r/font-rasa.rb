cask "font-rasa" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rasa"
  name "Rasa"
  homepage "https://fonts.google.com/specimen/Rasa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rasa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rasa-Italic[wght].ttf"
  font "Rasa[wght].ttf"

  # No zap stanza required
end
