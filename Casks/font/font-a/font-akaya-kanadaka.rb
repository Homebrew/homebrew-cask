cask "font-akaya-kanadaka" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akayakanadaka/AkayaKanadaka-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Akaya Kanadaka"
  homepage "https://fonts.google.com/specimen/Akaya+Kanadaka"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Akaya Kanadaka",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AkayaKanadaka-Regular.ttf"

  # No zap stanza required
end
