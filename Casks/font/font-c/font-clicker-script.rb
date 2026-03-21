cask "font-clicker-script" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/clickerscript/ClickerScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Clicker Script"
  homepage "https://fonts.google.com/specimen/Clicker+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Clicker Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ClickerScript-Regular.ttf"

  # No zap stanza required
end
