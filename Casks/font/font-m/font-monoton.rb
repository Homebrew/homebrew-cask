cask "font-monoton" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monoton/Monoton-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Monoton"
  homepage "https://fonts.google.com/specimen/Monoton"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Monoton",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Monoton-Regular.ttf"

  # No zap stanza required
end
