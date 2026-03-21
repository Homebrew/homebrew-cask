cask "font-noto-sans-sc" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssc/NotoSansSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans SC"
  homepage "https://fonts.google.com/specimen/Noto+Sans+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSC[wght].ttf"

  # No zap stanza required
end
