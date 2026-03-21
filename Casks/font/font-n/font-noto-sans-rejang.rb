cask "font-noto-sans-rejang" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansrejang/NotoSansRejang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Rejang"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Rejang"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Rejang",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansRejang-Regular.ttf"

  # No zap stanza required
end
