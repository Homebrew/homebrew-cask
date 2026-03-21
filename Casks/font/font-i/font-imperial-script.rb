cask "font-imperial-script" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imperialscript/ImperialScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Imperial Script"
  homepage "https://fonts.google.com/specimen/Imperial+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Imperial Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ImperialScript-Regular.ttf"

  # No zap stanza required
end
