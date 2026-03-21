cask "font-noto-sans-cypriot" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscypriot/NotoSansCypriot-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cypriot"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cypriot"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Cypriot",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCypriot-Regular.ttf"

  # No zap stanza required
end
