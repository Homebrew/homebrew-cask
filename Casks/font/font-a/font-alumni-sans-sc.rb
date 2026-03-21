cask "font-alumni-sans-sc" do
  version "1.016"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alumnisanssc"
  name "Alumni Sans SC"
  homepage "https://fonts.google.com/specimen/Alumni+Sans+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alumni Sans SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlumniSansSC-Italic[wght].ttf"
  font "AlumniSansSC[wght].ttf"

  # No zap stanza required
end
