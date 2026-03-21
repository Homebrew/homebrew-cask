cask "font-gveret-levin" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gveretlevin/GveretLevin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gveret Levin"
  homepage "https://fonts.google.com/specimen/Gveret+Levin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gveret Levin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GveretLevin-Regular.ttf"

  # No zap stanza required
end
