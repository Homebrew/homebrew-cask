cask "font-noto-sans-sunuwar" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssunuwar/NotoSansSunuwar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sunuwar"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sunuwar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Sunuwar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSunuwar-Regular.ttf"

  # No zap stanza required
end
