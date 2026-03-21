cask "font-gowun-dodum" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gowundodum/GowunDodum-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gowun Dodum"
  homepage "https://fonts.google.com/specimen/Gowun+Dodum"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gowun Dodum",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GowunDodum-Regular.ttf"

  # No zap stanza required
end
