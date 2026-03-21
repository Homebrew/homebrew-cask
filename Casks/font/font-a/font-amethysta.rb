cask "font-amethysta" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/amethysta/Amethysta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Amethysta"
  homepage "https://fonts.google.com/specimen/Amethysta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Amethysta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Amethysta-Regular.ttf"

  # No zap stanza required
end
