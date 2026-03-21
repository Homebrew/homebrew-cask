cask "font-noto-sans-samaritan" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssamaritan/NotoSansSamaritan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Samaritan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Samaritan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Samaritan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSamaritan-Regular.ttf"

  # No zap stanza required
end
