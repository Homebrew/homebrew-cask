cask "font-zhi-mang-xing" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zhimangxing/ZhiMangXing-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zhi Mang Xing"
  homepage "https://fonts.google.com/specimen/Zhi+Mang+Xing"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zhi Mang Xing",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZhiMangXing-Regular.ttf"

  # No zap stanza required
end
