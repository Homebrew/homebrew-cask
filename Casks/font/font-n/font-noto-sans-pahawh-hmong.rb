cask "font-noto-sans-pahawh-hmong" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspahawhhmong/NotoSansPahawhHmong-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Pahawh Hmong"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Pahawh+Hmong"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Pahawh Hmong",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansPahawhHmong-Regular.ttf"

  # No zap stanza required
end
