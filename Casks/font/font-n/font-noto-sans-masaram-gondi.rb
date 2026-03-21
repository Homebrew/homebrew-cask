cask "font-noto-sans-masaram-gondi" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmasaramgondi/NotoSansMasaramGondi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Masaram Gondi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Masaram+Gondi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Masaram Gondi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMasaramGondi-Regular.ttf"

  # No zap stanza required
end
