cask "font-bellefair" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bellefair/Bellefair-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bellefair"
  homepage "https://fonts.google.com/specimen/Bellefair"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bellefair",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bellefair-Regular.ttf"

  # No zap stanza required
end
