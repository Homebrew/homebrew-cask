cask "font-euphoria-script" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/euphoriascript/EuphoriaScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Euphoria Script"
  homepage "https://fonts.google.com/specimen/Euphoria+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Euphoria Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EuphoriaScript-Regular.ttf"

  # No zap stanza required
end
