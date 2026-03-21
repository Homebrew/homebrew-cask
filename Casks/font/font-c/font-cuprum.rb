cask "font-cuprum" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cuprum"
  name "Cuprum"
  homepage "https://fonts.google.com/specimen/Cuprum"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cuprum",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cuprum-Italic[wght].ttf"
  font "Cuprum[wght].ttf"

  # No zap stanza required
end
