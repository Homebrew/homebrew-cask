cask "font-ole" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ole/Ole-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ole"
  homepage "https://fonts.google.com/specimen/Ole"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ole",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ole-Regular.ttf"

  # No zap stanza required
end
