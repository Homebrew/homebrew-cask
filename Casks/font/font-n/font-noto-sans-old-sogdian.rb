cask "font-noto-sans-old-sogdian" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldsogdian/NotoSansOldSogdian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Sogdian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Sogdian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Old Sogdian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOldSogdian-Regular.ttf"

  # No zap stanza required
end
