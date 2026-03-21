cask "font-noto-sans-mongolian" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmongolian/NotoSansMongolian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mongolian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mongolian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Mongolian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMongolian-Regular.ttf"

  # No zap stanza required
end
