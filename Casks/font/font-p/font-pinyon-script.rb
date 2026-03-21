cask "font-pinyon-script" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pinyonscript/PinyonScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pinyon Script"
  homepage "https://fonts.google.com/specimen/Pinyon+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pinyon Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PinyonScript-Regular.ttf"

  # No zap stanza required
end
