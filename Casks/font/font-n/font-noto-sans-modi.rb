cask "font-noto-sans-modi" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmodi/NotoSansModi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Modi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Modi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Modi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansModi-Regular.ttf"

  # No zap stanza required
end
