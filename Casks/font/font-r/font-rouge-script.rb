cask "font-rouge-script" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rougescript/RougeScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rouge Script"
  homepage "https://fonts.google.com/specimen/Rouge+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rouge Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RougeScript-Regular.ttf"

  # No zap stanza required
end
