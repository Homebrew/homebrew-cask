cask "font-noto-sans-tagalog" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstagalog/NotoSansTagalog-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tagalog"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tagalog"

  font "NotoSansTagalog-Regular.ttf"

  # No zap stanza required
end
