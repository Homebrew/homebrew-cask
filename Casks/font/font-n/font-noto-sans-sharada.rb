cask "font-noto-sans-sharada" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssharada/NotoSansSharada-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sharada"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sharada"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Sharada",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSharada-Regular.ttf"

  # No zap stanza required
end
