cask "font-noto-sans-wancho" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanswancho/NotoSansWancho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Wancho"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Wancho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Wancho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansWancho-Regular.ttf"

  # No zap stanza required
end
