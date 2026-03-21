cask "font-caesar-dressing" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/caesardressing/CaesarDressing-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Caesar Dressing"
  homepage "https://fonts.google.com/specimen/Caesar+Dressing"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Caesar Dressing",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CaesarDressing-Regular.ttf"

  # No zap stanza required
end
