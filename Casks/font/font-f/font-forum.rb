cask "font-forum" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/forum/Forum-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Forum"
  homepage "https://fonts.google.com/specimen/Forum"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Forum",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Forum-Regular.ttf"

  # No zap stanza required
end
