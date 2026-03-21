cask "font-noto-sans-elbasan" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanselbasan/NotoSansElbasan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Elbasan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Elbasan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Elbasan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansElbasan-Regular.ttf"

  # No zap stanza required
end
