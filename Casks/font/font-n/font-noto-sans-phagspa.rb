cask "font-noto-sans-phagspa" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansphagspa/NotoSansPhagsPa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans PhagsPa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+PhagsPa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans PhagsPa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansPhagsPa-Regular.ttf"

  # No zap stanza required
end
