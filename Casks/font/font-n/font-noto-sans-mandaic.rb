cask "font-noto-sans-mandaic" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmandaic/NotoSansMandaic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mandaic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mandaic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Mandaic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMandaic-Regular.ttf"

  # No zap stanza required
end
