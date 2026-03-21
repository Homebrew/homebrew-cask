cask "font-walter-turncoat" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/walterturncoat/WalterTurncoat-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Walter Turncoat"
  homepage "https://fonts.google.com/specimen/Walter+Turncoat"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Walter Turncoat",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WalterTurncoat-Regular.ttf"

  # No zap stanza required
end
