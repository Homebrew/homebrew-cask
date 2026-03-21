cask "font-questrial" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/questrial/Questrial-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Questrial"
  homepage "https://fonts.google.com/specimen/Questrial"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Questrial",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Questrial-Regular.ttf"

  # No zap stanza required
end
