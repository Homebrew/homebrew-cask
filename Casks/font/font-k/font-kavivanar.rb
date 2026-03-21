cask "font-kavivanar" do
  version "1.88"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kavivanar/Kavivanar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kavivanar"
  homepage "https://fonts.google.com/specimen/Kavivanar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kavivanar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kavivanar-Regular.ttf"

  # No zap stanza required
end
