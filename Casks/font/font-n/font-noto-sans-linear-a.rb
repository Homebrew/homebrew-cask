cask "font-noto-sans-linear-a" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslineara/NotoSansLinearA-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Linear A"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Linear+A"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Linear A",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLinearA-Regular.ttf"

  # No zap stanza required
end
