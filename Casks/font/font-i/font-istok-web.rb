cask "font-istok-web" do
  version "1.0.2"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/istokweb"
  name "Istok Web"
  homepage "https://fonts.google.com/specimen/Istok+Web"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Istok Web",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "IstokWeb-Bold.ttf"
  font "IstokWeb-BoldItalic.ttf"
  font "IstokWeb-Italic.ttf"
  font "IstokWeb-Regular.ttf"

  # No zap stanza required
end
