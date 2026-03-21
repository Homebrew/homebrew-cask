cask "font-kranky" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/kranky/Kranky-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kranky"
  homepage "https://fonts.google.com/specimen/Kranky"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kranky",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kranky-Regular.ttf"

  # No zap stanza required
end
