cask "font-slackey" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/slackey/Slackey-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Slackey"
  homepage "https://fonts.google.com/specimen/Slackey"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Slackey",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Slackey-Regular.ttf"

  # No zap stanza required
end
