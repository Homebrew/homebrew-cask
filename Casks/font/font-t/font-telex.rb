cask "font-telex" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/telex/Telex-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Telex"
  homepage "https://fonts.google.com/specimen/Telex"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Telex",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Telex-Regular.ttf"

  # No zap stanza required
end
