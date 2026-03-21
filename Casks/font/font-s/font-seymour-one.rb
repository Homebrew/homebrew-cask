cask "font-seymour-one" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/seymourone/SeymourOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Seymour One"
  homepage "https://fonts.google.com/specimen/Seymour+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Seymour One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SeymourOne-Regular.ttf"

  # No zap stanza required
end
