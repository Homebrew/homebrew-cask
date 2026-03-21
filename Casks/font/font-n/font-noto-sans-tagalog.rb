cask "font-noto-sans-tagalog" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstagalog/NotoSansTagalog-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tagalog"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tagalog"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tagalog",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTagalog-Regular.ttf"

  # No zap stanza required
end
