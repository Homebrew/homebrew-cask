cask "font-bbh-bogle" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhbogle/BBHBogle-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Bogle"
  homepage "https://fonts.google.com/specimen/BBH+Bogle"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BBH Bogle",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BBHBogle-Regular.ttf"

  # No zap stanza required
end
