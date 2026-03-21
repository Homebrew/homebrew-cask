cask "font-bad-script" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/badscript/BadScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bad Script"
  homepage "https://fonts.google.com/specimen/Bad+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bad Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BadScript-Regular.ttf"

  # No zap stanza required
end
