cask "font-alkalami" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alkalami/Alkalami-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alkalami"
  homepage "https://fonts.google.com/specimen/Alkalami"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alkalami",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alkalami-Regular.ttf"

  # No zap stanza required
end
