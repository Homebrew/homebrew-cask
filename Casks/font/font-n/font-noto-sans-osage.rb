cask "font-noto-sans-osage" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansosage/NotoSansOsage-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Osage"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Osage"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Osage",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOsage-Regular.ttf"

  # No zap stanza required
end
