cask "font-noto-sans-vai" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansvai/NotoSansVai-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Vai"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Vai"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Vai",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansVai-Regular.ttf"

  # No zap stanza required
end
