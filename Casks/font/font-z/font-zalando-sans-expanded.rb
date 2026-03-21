cask "font-zalando-sans-expanded" do
  version "1.700"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zalandosansexpanded"
  name "Zalando Sans Expanded"
  homepage "https://fonts.google.com/specimen/Zalando+Sans+Expanded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zalando Sans Expanded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZalandoSansExpanded-Italic[wght].ttf"
  font "ZalandoSansExpanded[wght].ttf"

  # No zap stanza required
end
