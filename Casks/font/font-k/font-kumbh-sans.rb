cask "font-kumbh-sans" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kumbhsans/KumbhSans%5BYOPQ%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kumbh Sans"
  homepage "https://fonts.google.com/specimen/Kumbh+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kumbh Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KumbhSans[YOPQ,wght].ttf"

  # No zap stanza required
end
