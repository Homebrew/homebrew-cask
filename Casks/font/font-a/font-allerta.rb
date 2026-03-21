cask "font-allerta" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allerta/Allerta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allerta"
  homepage "https://fonts.google.com/specimen/Allerta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Allerta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Allerta-Regular.ttf"

  # No zap stanza required
end
