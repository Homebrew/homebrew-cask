cask "font-noto-sans-mahajani" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmahajani/NotoSansMahajani-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mahajani"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mahajani"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Mahajani",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMahajani-Regular.ttf"

  # No zap stanza required
end
