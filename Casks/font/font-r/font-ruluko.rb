cask "font-ruluko" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruluko/Ruluko-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ruluko"
  homepage "https://fonts.google.com/specimen/Ruluko"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ruluko",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ruluko-Regular.ttf"

  # No zap stanza required
end
