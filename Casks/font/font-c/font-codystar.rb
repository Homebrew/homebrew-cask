cask "font-codystar" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/codystar"
  name "Codystar"
  homepage "https://fonts.google.com/specimen/Codystar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Codystar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Codystar-Light.ttf"
  font "Codystar-Regular.ttf"

  # No zap stanza required
end
