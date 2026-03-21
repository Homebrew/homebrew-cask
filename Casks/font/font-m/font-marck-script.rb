cask "font-marck-script" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marckscript/MarckScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marck Script"
  homepage "https://fonts.google.com/specimen/Marck+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Marck Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MarckScript-Regular.ttf"

  # No zap stanza required
end
