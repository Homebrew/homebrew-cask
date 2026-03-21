cask "font-yeon-sung" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yeonsung/YeonSung-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yeon Sung"
  homepage "https://fonts.google.com/specimen/Yeon+Sung"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yeon Sung",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YeonSung-Regular.ttf"

  # No zap stanza required
end
