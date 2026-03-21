cask "font-calistoga" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/calistoga/Calistoga-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Calistoga"
  homepage "https://fonts.google.com/specimen/Calistoga"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Calistoga",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Calistoga-Regular.ttf"

  # No zap stanza required
end
