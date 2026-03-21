cask "font-zalando-sans-semiexpanded" do
  version "1.700"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zalandosanssemiexpanded"
  name "Zalando Sans SemiExpanded"
  homepage "https://fonts.google.com/specimen/Zalando+Sans+SemiExpanded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zalando Sans SemiExpanded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZalandoSansSemiExpanded-Italic[wght].ttf"
  font "ZalandoSansSemiExpanded[wght].ttf"

  # No zap stanza required
end
