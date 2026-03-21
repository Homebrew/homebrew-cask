cask "font-noto-sans-nabataean" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnabataean/NotoSansNabataean-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Nabataean"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Nabataean"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Nabataean",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansNabataean-Regular.ttf"

  # No zap stanza required
end
