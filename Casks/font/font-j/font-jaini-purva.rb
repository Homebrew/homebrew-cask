cask "font-jaini-purva" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jainipurva/JainiPurva-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jaini Purva"
  homepage "https://fonts.google.com/specimen/Jaini+Purva"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jaini Purva",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JainiPurva-Regular.ttf"

  # No zap stanza required
end
