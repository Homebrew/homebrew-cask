cask "font-noto-sans-lepcha" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslepcha/NotoSansLepcha-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lepcha"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lepcha"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Lepcha",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLepcha-Regular.ttf"

  # No zap stanza required
end
