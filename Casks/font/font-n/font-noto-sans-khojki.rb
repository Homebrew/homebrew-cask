cask "font-noto-sans-khojki" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskhojki/NotoSansKhojki-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Khojki"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Khojki"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Khojki",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKhojki-Regular.ttf"

  # No zap stanza required
end
