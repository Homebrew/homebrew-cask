cask "font-noto-sans-multani" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmultani/NotoSansMultani-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Multani"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Multani"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Multani",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMultani-Regular.ttf"

  # No zap stanza required
end
