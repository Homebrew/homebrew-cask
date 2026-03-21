cask "font-share-tech" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sharetech/ShareTech-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Share Tech"
  homepage "https://fonts.google.com/specimen/Share+Tech"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Share Tech",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShareTech-Regular.ttf"

  # No zap stanza required
end
