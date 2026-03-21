cask "font-new-amsterdam" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/newamsterdam/NewAmsterdam-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "New Amsterdam"
  homepage "https://fonts.google.com/specimen/New+Amsterdam"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "New Amsterdam",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NewAmsterdam-Regular.ttf"

  # No zap stanza required
end
