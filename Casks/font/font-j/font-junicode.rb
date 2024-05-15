cask "font-junicode" do
  version "1.002"
  sha256 "c199d96c8424be60fcab8d00d2eee39ea8ae632cfd5e710cbbd70626d6a729e7"

  url "https://downloads.sourceforge.net/junicode/junicode-#{version}.zip",
      verified: "downloads.sourceforge.net/junicode/"
  name "Junicode"
  homepage "https://junicode.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/junicode/rss?path=/junicode"
    regex(%r{url=.*?/junicode[._-]v?(\d+(?:[.-]\d+)+)\.(?:t|zip)}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
    end
  end

  font "FoulisGreek.ttf"
  font "Junicode-Bold.ttf"
  font "Junicode-BoldItalic.ttf"
  font "Junicode-Italic.ttf"
  font "Junicode.ttf"

  # No zap stanza required
end
