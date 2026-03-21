cask "font-noto-sans-ogham" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansogham/NotoSansOgham-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ogham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ogham"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Ogham",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOgham-Regular.ttf"

  # No zap stanza required
end
