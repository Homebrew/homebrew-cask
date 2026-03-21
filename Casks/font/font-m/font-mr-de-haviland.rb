cask "font-mr-de-haviland" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrdehaviland/MrDeHaviland-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mr De Haviland"
  homepage "https://fonts.google.com/specimen/Mr+De+Haviland"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mr De Haviland",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MrDeHaviland-Regular.ttf"

  # No zap stanza required
end
