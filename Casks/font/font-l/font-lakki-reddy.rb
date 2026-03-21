cask "font-lakki-reddy" do
  version "1.0.4"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lakkireddy/LakkiReddy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lakki Reddy"
  homepage "https://fonts.google.com/specimen/Lakki+Reddy"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lakki Reddy",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LakkiReddy-Regular.ttf"

  # No zap stanza required
end
