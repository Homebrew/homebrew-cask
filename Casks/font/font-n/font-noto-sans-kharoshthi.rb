cask "font-noto-sans-kharoshthi" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskharoshthi/NotoSansKharoshthi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kharoshthi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kharoshthi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Kharoshthi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKharoshthi-Regular.ttf"

  # No zap stanza required
end
