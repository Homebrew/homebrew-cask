cask "font-noto-sans-osmanya" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansosmanya/NotoSansOsmanya-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Osmanya"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Osmanya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Osmanya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOsmanya-Regular.ttf"

  # No zap stanza required
end
