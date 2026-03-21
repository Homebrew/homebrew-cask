cask "font-noto-sans-phoenician" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansphoenician/NotoSansPhoenician-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Phoenician"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Phoenician"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Phoenician",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansPhoenician-Regular.ttf"

  # No zap stanza required
end
