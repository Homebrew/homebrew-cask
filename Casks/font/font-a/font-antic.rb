cask "font-antic" do
  version "1.0012"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/antic/Antic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Antic"
  homepage "https://fonts.google.com/specimen/Antic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Antic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Antic-Regular.ttf"

  # No zap stanza required
end
