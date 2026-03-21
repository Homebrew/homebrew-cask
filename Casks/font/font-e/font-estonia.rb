cask "font-estonia" do
  version "1.014"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/estonia/Estonia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Estonia"
  homepage "https://fonts.google.com/specimen/Estonia"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Estonia",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Estonia-Regular.ttf"

  # No zap stanza required
end
