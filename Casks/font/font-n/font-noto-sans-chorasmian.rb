cask "font-noto-sans-chorasmian" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanschorasmian/NotoSansChorasmian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Chorasmian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Chorasmian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Chorasmian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansChorasmian-Regular.ttf"

  # No zap stanza required
end
