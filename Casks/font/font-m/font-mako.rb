cask "font-mako" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mako/Mako-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mako"
  homepage "https://fonts.google.com/specimen/Mako"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mako",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mako-Regular.ttf"

  # No zap stanza required
end
