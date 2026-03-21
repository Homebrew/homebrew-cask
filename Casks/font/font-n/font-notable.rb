cask "font-notable" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notable/Notable-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Notable"
  homepage "https://fonts.google.com/specimen/Notable"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Notable",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Notable-Regular.ttf"

  # No zap stanza required
end
