cask "font-nova-script" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novascript/NovaScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Script"
  homepage "https://fonts.google.com/specimen/Nova+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaScript-Regular.ttf"

  # No zap stanza required
end
