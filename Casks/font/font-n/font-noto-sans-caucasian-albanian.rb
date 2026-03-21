cask "font-noto-sans-caucasian-albanian" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscaucasianalbanian/NotoSansCaucasianAlbanian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Caucasian Albanian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Caucasian+Albanian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Caucasian Albanian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCaucasianAlbanian-Regular.ttf"

  # No zap stanza required
end
