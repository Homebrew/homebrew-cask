cask "font-yuji-mai" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujimai/YujiMai-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Mai"
  homepage "https://fonts.google.com/specimen/Yuji+Mai"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yuji Mai",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YujiMai-Regular.ttf"

  # No zap stanza required
end
