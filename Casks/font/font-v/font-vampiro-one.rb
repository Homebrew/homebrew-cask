cask "font-vampiro-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vampiroone/VampiroOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vampiro One"
  homepage "https://fonts.google.com/specimen/Vampiro+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vampiro One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VampiroOne-Regular.ttf"

  # No zap stanza required
end
