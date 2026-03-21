cask "font-pochaevsk" do
  version "1.210"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pochaevsk/Pochaevsk-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pochaevsk"
  homepage "https://fonts.google.com/specimen/Pochaevsk"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pochaevsk",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Pochaevsk-Regular.ttf"

  # No zap stanza required
end
