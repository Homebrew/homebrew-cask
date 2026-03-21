cask "font-tulpen-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tulpenone/TulpenOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tulpen One"
  homepage "https://fonts.google.com/specimen/Tulpen+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tulpen One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TulpenOne-Regular.ttf"

  # No zap stanza required
end
