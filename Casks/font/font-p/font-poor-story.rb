cask "font-poor-story" do
  version "3.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/poorstory/PoorStory-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Poor Story"
  homepage "https://fonts.google.com/specimen/Poor+Story"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Poor Story",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PoorStory-Regular.ttf"

  # No zap stanza required
end
