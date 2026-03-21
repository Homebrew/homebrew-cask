cask "font-knewave" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/knewave/Knewave-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Knewave"
  homepage "https://fonts.google.com/specimen/Knewave"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Knewave",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Knewave-Regular.ttf"

  # No zap stanza required
end
