cask "font-noto-sans-limbu" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslimbu/NotoSansLimbu-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Limbu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Limbu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Limbu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLimbu-Regular.ttf"

  # No zap stanza required
end
