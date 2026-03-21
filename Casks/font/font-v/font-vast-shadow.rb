cask "font-vast-shadow" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vastshadow/VastShadow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vast Shadow"
  homepage "https://fonts.google.com/specimen/Vast+Shadow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vast Shadow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VastShadow-Regular.ttf"

  # No zap stanza required
end
