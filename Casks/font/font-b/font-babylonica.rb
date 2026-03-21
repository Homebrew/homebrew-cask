cask "font-babylonica" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/babylonica/Babylonica-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Babylonica"
  homepage "https://fonts.google.com/specimen/Babylonica"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Babylonica",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Babylonica-Regular.ttf"

  # No zap stanza required
end
