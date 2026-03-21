cask "font-yesteryear" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yesteryear/Yesteryear-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yesteryear"
  homepage "https://fonts.google.com/specimen/Yesteryear"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yesteryear",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yesteryear-Regular.ttf"

  # No zap stanza required
end
