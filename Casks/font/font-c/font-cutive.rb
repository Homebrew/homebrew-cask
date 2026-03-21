cask "font-cutive" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cutive/Cutive-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cutive"
  homepage "https://fonts.google.com/specimen/Cutive"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cutive",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cutive-Regular.ttf"

  # No zap stanza required
end
