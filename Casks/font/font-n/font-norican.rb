cask "font-norican" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/norican/Norican-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Norican"
  homepage "https://fonts.google.com/specimen/Norican"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Norican",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Norican-Regular.ttf"

  # No zap stanza required
end
