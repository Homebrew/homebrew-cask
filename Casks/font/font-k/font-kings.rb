cask "font-kings" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kings/Kings-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kings"
  homepage "https://fonts.google.com/specimen/Kings"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kings",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kings-Regular.ttf"

  # No zap stanza required
end
