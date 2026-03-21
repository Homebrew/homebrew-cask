cask "font-noto-sans-elymaic" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanselymaic/NotoSansElymaic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Elymaic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Elymaic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Elymaic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansElymaic-Regular.ttf"

  # No zap stanza required
end
