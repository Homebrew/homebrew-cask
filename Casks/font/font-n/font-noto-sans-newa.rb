cask "font-noto-sans-newa" do
  version "2.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnewa/NotoSansNewa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Newa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Newa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Newa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansNewa-Regular.ttf"

  # No zap stanza required
end
