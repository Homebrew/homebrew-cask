cask "font-noto-sans-pau-cin-hau" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspaucinhau/NotoSansPauCinHau-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Pau Cin Hau"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Pau+Cin+Hau"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Pau Cin Hau",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansPauCinHau-Regular.ttf"

  # No zap stanza required
end
