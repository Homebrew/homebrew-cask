cask "remnote" do
  version "1.2.9"
  sha256 "e34dfb6d3661cb5893e0c4d2014265fe0923e03bce30128f38c93939c4ea910f"

  url "https://download.remnote.io/RemNote-#{version}.dmg"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.io/"

  livecheck do
    url "https://s3.amazonaws.com/download.remnote.io/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end
