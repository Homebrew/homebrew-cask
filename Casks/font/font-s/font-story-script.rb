cask "font-story-script" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/storyscript/StoryScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Story Script"
  homepage "https://fonts.google.com/specimen/Story+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Story Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StoryScript-Regular.ttf"

  # No zap stanza required
end
