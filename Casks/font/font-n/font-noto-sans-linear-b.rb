cask "font-noto-sans-linear-b" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslinearb/NotoSansLinearB-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Linear B"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Linear+B"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Linear B",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLinearB-Regular.ttf"

  # No zap stanza required
end
