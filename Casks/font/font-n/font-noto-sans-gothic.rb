cask "font-noto-sans-gothic" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgothic/NotoSansGothic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gothic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Gothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansGothic-Regular.ttf"

  # No zap stanza required
end
