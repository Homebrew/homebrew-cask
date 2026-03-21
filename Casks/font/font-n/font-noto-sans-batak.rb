cask "font-noto-sans-batak" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbatak/NotoSansBatak-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Batak"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Batak"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Batak",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansBatak-Regular.ttf"

  # No zap stanza required
end
