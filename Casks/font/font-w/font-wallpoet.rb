cask "font-wallpoet" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wallpoet/Wallpoet-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Wallpoet"
  homepage "https://fonts.google.com/specimen/Wallpoet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Wallpoet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Wallpoet-Regular.ttf"

  # No zap stanza required
end
