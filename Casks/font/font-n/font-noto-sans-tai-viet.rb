cask "font-noto-sans-tai-viet" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstaiviet/NotoSansTaiViet-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tai Viet"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tai+Viet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tai Viet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTaiViet-Regular.ttf"

  # No zap stanza required
end
