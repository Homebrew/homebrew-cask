cask "font-micro-5-charted" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/micro5charted/Micro5Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Micro 5 Charted"
  homepage "https://fonts.google.com/specimen/Micro+5+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Micro 5 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Micro5Charted-Regular.ttf"

  # No zap stanza required
end
