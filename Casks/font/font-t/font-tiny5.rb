cask "font-tiny5" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiny5/Tiny5-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tiny5"
  homepage "https://fonts.google.com/specimen/Tiny5"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tiny5",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tiny5-Regular.ttf"

  # No zap stanza required
end
