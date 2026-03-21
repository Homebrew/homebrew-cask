cask "font-yomogi" do
  version "3.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yomogi/Yomogi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yomogi"
  homepage "https://fonts.google.com/specimen/Yomogi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yomogi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yomogi-Regular.ttf"

  # No zap stanza required
end
