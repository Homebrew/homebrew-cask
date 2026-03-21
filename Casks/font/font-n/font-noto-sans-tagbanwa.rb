cask "font-noto-sans-tagbanwa" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstagbanwa/NotoSansTagbanwa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tagbanwa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tagbanwa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tagbanwa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTagbanwa-Regular.ttf"

  # No zap stanza required
end
