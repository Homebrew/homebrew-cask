cask "font-koulen" do
  version "8.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/koulen/Koulen-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Koulen"
  homepage "https://fonts.google.com/specimen/Koulen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Koulen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Koulen-Regular.ttf"

  # No zap stanza required
end
