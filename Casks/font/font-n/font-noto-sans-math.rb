cask "font-noto-sans-math" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmath/NotoSansMath-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Math"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Math"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Math",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMath-Regular.ttf"

  # No zap stanza required
end
