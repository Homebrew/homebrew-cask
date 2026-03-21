cask "font-noto-sans-hanunoo" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshanunoo/NotoSansHanunoo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Hanunoo"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Hanunoo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Hanunoo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansHanunoo-Regular.ttf"

  # No zap stanza required
end
