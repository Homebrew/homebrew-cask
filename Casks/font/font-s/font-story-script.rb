cask "font-story-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/storyscript/StoryScript-Regular.ttf"
  name "Story Script"
  homepage "https://github.com/lroulh/story-script"

  font "StoryScript-Regular.ttf"

  # No zap stanza required
end
