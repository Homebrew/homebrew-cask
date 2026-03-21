cask "font-noto-sans-signwriting" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssignwriting/NotoSansSignWriting-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans SignWriting"
  homepage "https://fonts.google.com/specimen/Noto+Sans+SignWriting"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans SignWriting",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSignWriting-Regular.ttf"

  # No zap stanza required
end
