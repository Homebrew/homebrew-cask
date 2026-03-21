cask "font-mr-dafoe" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrdafoe/MrDafoe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mr Dafoe"
  homepage "https://fonts.google.com/specimen/Mr+Dafoe"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mr Dafoe",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MrDafoe-Regular.ttf"

  # No zap stanza required
end
