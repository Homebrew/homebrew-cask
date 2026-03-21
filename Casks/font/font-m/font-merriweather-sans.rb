cask "font-merriweather-sans" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/merriweathersans"
  name "Merriweather Sans"
  homepage "https://fonts.google.com/specimen/Merriweather+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Merriweather Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MerriweatherSans-Italic[wght].ttf"
  font "MerriweatherSans[wght].ttf"

  # No zap stanza required
end
