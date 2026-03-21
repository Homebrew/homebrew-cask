cask "font-noto-sans-soyombo" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssoyombo/NotoSansSoyombo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Soyombo"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Soyombo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Soyombo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSoyombo-Regular.ttf"

  # No zap stanza required
end
