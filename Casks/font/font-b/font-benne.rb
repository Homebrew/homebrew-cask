cask "font-benne" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/benne/Benne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Benne"
  homepage "https://fonts.google.com/specimen/Benne"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Benne",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Benne-Regular.ttf"

  # No zap stanza required
end
