cask "font-gowun-batang" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gowunbatang"
  name "Gowun Batang"
  homepage "https://fonts.google.com/specimen/Gowun+Batang"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gowun Batang",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GowunBatang-Bold.ttf"
  font "GowunBatang-Regular.ttf"

  # No zap stanza required
end
