cask "font-noto-sans-mende-kikakui" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmendekikakui/NotoSansMendeKikakui-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mende Kikakui"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mende+Kikakui"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Mende Kikakui",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMendeKikakui-Regular.ttf"

  # No zap stanza required
end
