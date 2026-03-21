cask "font-noto-sans-runic" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansrunic/NotoSansRunic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Runic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Runic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Runic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansRunic-Regular.ttf"

  # No zap stanza required
end
