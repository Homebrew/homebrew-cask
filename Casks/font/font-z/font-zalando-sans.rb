cask "font-zalando-sans" do
  version "1.700"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zalandosans"
  name "Zalando Sans"
  homepage "https://fonts.google.com/specimen/Zalando+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zalando Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZalandoSans-Italic[wdth,wght].ttf"
  font "ZalandoSans[wdth,wght].ttf"

  # No zap stanza required
end
