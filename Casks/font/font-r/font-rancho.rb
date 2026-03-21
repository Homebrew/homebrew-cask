cask "font-rancho" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/rancho/Rancho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rancho"
  homepage "https://fonts.google.com/specimen/Rancho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rancho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rancho-Regular.ttf"

  # No zap stanza required
end
