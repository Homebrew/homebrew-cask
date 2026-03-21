cask "font-emblema-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/emblemaone/EmblemaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Emblema One"
  homepage "https://fonts.google.com/specimen/Emblema+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Emblema One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EmblemaOne-Regular.ttf"

  # No zap stanza required
end
