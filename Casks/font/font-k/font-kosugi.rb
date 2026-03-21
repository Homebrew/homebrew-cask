cask "font-kosugi" do
  version "4.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/kosugi/Kosugi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kosugi"
  homepage "https://fonts.google.com/specimen/Kosugi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kosugi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kosugi-Regular.ttf"

  # No zap stanza required
end
