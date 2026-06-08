cask "font-story-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/storyscript/StoryScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Story Script"
  homepage "https://fonts.google.com/specimen/Story+Script"

  font "StoryScript-Regular.ttf"

  # No zap stanza required
end
