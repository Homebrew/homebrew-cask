cask "font-noto-sans-siddham" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssiddham/NotoSansSiddham-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Siddham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Siddham"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Siddham",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSiddham-Regular.ttf"

  # No zap stanza required
end
