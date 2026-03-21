cask "font-homenaje" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/homenaje/Homenaje-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Homenaje"
  homepage "https://fonts.google.com/specimen/Homenaje"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Homenaje",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Homenaje-Regular.ttf"

  # No zap stanza required
end
