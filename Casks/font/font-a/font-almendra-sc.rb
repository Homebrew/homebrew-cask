cask "font-almendra-sc" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/almendrasc/AlmendraSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Almendra SC"
  homepage "https://fonts.google.com/specimen/Almendra+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Almendra SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlmendraSC-Regular.ttf"

  # No zap stanza required
end
