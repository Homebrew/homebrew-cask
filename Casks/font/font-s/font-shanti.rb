cask "font-shanti" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shanti/Shanti-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shanti"
  homepage "https://fonts.google.com/specimen/Shanti"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shanti",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Shanti-Regular.ttf"

  # No zap stanza required
end
