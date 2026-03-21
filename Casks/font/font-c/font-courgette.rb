cask "font-courgette" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/courgette/Courgette-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Courgette"
  homepage "https://fonts.google.com/specimen/Courgette"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Courgette",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Courgette-Regular.ttf"

  # No zap stanza required
end
