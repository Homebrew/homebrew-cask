cask "font-anta" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anta/Anta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Anta"
  homepage "https://fonts.google.com/specimen/Anta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Anta-Regular.ttf"

  # No zap stanza required
end
