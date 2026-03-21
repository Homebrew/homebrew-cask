cask "font-sekuya" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sekuya/Sekuya-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sekuya"
  homepage "https://fonts.google.com/specimen/Sekuya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sekuya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sekuya-Regular.ttf"

  # No zap stanza required
end
