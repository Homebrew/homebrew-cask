cask "font-noto-sans-lycian" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslycian/NotoSansLycian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lycian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lycian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Lycian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLycian-Regular.ttf"

  # No zap stanza required
end
