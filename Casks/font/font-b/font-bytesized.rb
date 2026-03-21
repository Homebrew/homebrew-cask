cask "font-bytesized" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bytesized/Bytesized-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bytesized"
  homepage "https://fonts.google.com/specimen/Bytesized"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bytesized",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bytesized-Regular.ttf"

  # No zap stanza required
end
