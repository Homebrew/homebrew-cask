cask "font-noto-sans-hatran" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshatran/NotoSansHatran-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Hatran"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Hatran"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Hatran",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansHatran-Regular.ttf"

  # No zap stanza required
end
