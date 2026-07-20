cask "font-noto-sans-tagbanwa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstagbanwa/NotoSansTagbanwa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tagbanwa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tagbanwa"

  font "NotoSansTagbanwa-Regular.ttf"

  # No zap stanza required
end
